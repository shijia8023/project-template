/****** Object:  StoredProcedure [dbo].[SP_SYS_GetStationPagerData]    Script Date: 2018/2/26 11:23:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:	    杨俊
-- Create date: 2017-12-01
-- Description:	获取有效岗位的分页数据
-- Alter:供岗位选择组件使用，之后再做优化
-- Alter:关联用户表时，添加UserType=2(职员)过滤条件 2018-02-26 by 杨俊
-- =============================================
CREATE PROCEDURE [dbo].[SP_SYS_GetStationPagerData]
	@StruId VARCHAR(36),					--架构Id
	@StruType INT,							--架构类型，0：公司，1：部门
	@WithChild BIT = 1,						--是否带有子级
	@WhereClip NVARCHAR(2000),				--条件(不含WHERE关键字)
	@OrderByClip VARCHAR(200),				--排序列(不含ORDER BY关键字)
	@PageIndex INT = 1,						--当前页
	@PageSize INT = 20,						--页面大小
	@Total INT = 0 OUTPUT,					--总记录数
	@FinalPageIndex INT = 0 OUTPUT			--总页数
AS
BEGIN
	DECLARE @Sql NVARCHAR(MAX),				--获取岗位的语句
			@SkipRows INT = 0				--需要跳过的行数	

	CREATE TABLE #Stru						--企业架构临时表
	(
		StruId VARCHAR(36),
		StruName NVARCHAR(100),
		ParentStruId VARCHAR(36),
		CorpId VARCHAR(36),
		Outline VARCHAR(100)		
	)

	CREATE TABLE #Station					--岗位临时表
	(
		Idx INT IDENTITY(1,1),
		StationId VARCHAR(36),
		StationName NVARCHAR(200),
		StationNo NVARCHAR(100),
		DeptId VARCHAR(36),
		DeptName NVARCHAR(100),
		CorpId VARCHAR(36),
		CorpName NVARCHAR(100),
		EmployeeId VARCHAR(36),
		EmployeeName NVARCHAR(100),
        UserId VARCHAR(36),
		AliasName NVARCHAR(100),
		PositionId VARCHAR(36),
		PositionName NVARCHAR(200),
		RowIndex INT	
	)

	----当企业架构Id为空值，表示获取所有有效的企业架构，故@WithChild应为1
	--IF (@StruId IS NULL)
	--BEGIN
	--	SET @WithChild = 1
	--END

	--1.获取有效的企业架构数据放入临时表#Stru
	--当@WithChild=0，表示不带子级，此时架构类型如果为公司，则要获取直属于该公司的部门；如果为部门，则不获取其子级部门
	;WITH CTE AS 
				(
					SELECT StruId,StruName,ParentStruId,CorpId,Outline
					FROM dbo.TSys_Structure 
					WHERE IsDelete = 0 AND StruId = @StruId
					UNION ALL
					SELECT A.StruId,A.StruName,A.ParentStruId,A.CorpId,A.Outline
					FROM dbo.TSys_Structure A
					INNER JOIN CTE AS B ON A.ParentStruId = B.StruId
					WHERE A.IsDelete = 0  AND (@WithChild = 1 OR (@StruType = 0 AND StruType = 1))
				)
	INSERT INTO #Stru
	SELECT StruId,StruName,ParentStruId,CorpId,Outline
	FROM CTE
	
	--2.拼接语句
	DECLARE @TopCount INT,@PreSql NVARCHAR(MAX),@LastSql NVARCHAR(MAX)
	SELECT @TopCount=@PageSize*@PageIndex
	SET @PreSql = 'INSERT INTO #Station (
		StationId,StationName,StationNo,DeptId,DeptName,CorpId,CorpName,EmployeeId,EmployeeName,
		UserId,AliasName,PositionId,PositionName,RowIndex
		)'
		+ ' SELECT TOP (' + CAST(@TopCount AS VARCHAR(10)) + ')' 
		+ ' A.StationId,A.StationName,A.StationNo,A.DeptId,B.StruName AS DeptName,F.CorpId,F.StruName AS CorpName,A.EmployeeId,C.EmployeeName,
        G.UserId,G.AliasName,A.PositionId,D.PositionName,A.RowIndex '

	SET @LastSql = ' FROM dbo.TSys_Station A
                     INNER JOIN #Stru B ON A.DeptId = B.StruId
                     LEFT JOIN dbo.TSys_Employee C ON A.EmployeeId = C.EmployeeId
                     LEFT JOIN dbo.TSys_Position D ON A.PositionId = D.PositionId
                     LEFT JOIN dbo.TSys_Station E ON A.LeaderStationId = E.StationId
                     LEFT JOIN dbo.TSys_Structure F ON B.CorpId = F.StruId
					 LEFT JOIN dbo.TSys_User G ON C.EmployeeId = G.UsedById AND G.IsDelete = 0 AND G.UserType = 2
                     WHERE A.IsDelete = 0 ' + @WhereClip

	--3.获取总记录数
	SET @Sql = ' SELECT @Total = COUNT(1) ' + @LastSql
	EXEC sp_executesql @Sql,N'@Total INT OUTPUT',@Total OUTPUT

	--4.获取表单数据
	IF @OrderByClip<>''
	BEGIN
		SET @LastSql=@LastSql+' ORDER BY ' + @OrderByClip
	END
	ELSE
	BEGIN
		SET @LastSql=@LastSql+' ORDER BY B.Outline,A.RowIndex '
	END

	SET @Sql=@PreSql+@LastSql
	EXEC sp_executesql @Sql

	--5.设置总页数
	IF (@Total = 0)
	BEGIN
		SET @FinalPageIndex = 0
		SET @PageSize = 0
	END
	ELSE
	BEGIN
		IF (@PageSize <= 0)
		BEGIN
			SET @PageSize = @Total
		END
		--设置总页数
		SELECT @FinalPageIndex = (@Total + @PageSize - 1) / @PageSize
	END		

	--6.获取需要跳过的行数
	IF (@FinalPageIndex < @PageIndex)
	BEGIN
		SET @PageIndex = @FinalPageIndex
	END
	IF (@PageIndex < 1)
	BEGIN
		SET @PageIndex = 1
	END

	SET @SkipRows = (@PageIndex - 1) * @PageSize

	--7.查询分页数据
	SELECT StationId,StationName,StationNo,DeptId,DeptName,CorpId,CorpName,EmployeeId,EmployeeName,
		   UserId,AliasName,PositionId,PositionName,RowIndex
	FROM #Station
	WHERE Idx > @SkipRows
	ORDER BY Idx

	--8.删除临时表
	DROP TABLE #Stru
	DROP TABLE #Station	

END









GO
