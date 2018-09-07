
--��ʼ������
--1.�ͻ�������
INSERT INTO dbo.TSys_Client( ClientId ,ClientSecret ,Name ,Enabled ,RefreshTokenLifeTime ,CreateDate ,IsSystem)
SELECT 'MobileApp' , 'sapi@1234' , N'�ƶ�Ӧ�ö�' , 1 , 36000 , GETDATE() ,1 
UNION ALL
SELECT 'WebApp' , 'sapi@1234' , N'WebӦ�ö�' , 1 , 36000 , GETDATE() ,1 

--2.ϵͳ���ñ�
INSERT INTO dbo.TSys_Config( ConfigId ,ConfigName ,Value ,[Description] ,LastEditDate)
SELECT 'DefaultLanguage' , N'Ĭ������' , N'zh-cn' , NULL , GETDATE()  
UNION ALL
SELECT 'DefaultWebLayout' , N'Ĭ�ϲ���' , N'default' , NULL , GETDATE() 
UNION ALL
SELECT 'DefaultWebTheme' , N'Ĭ������' , N'default' , NULL , GETDATE() 
UNION ALL
SELECT 'UserInitialPassword' , N'�û���ʼ����' , N'123456' , NULL , GETDATE()   
UNION ALL
SELECT 'ExportDataMaxCount', N'�������ݵ��������',N'5000',N'�������Ƶ������ݵ��������',GETDATE()
UNION ALL
SELECT 'QuickMenuSetting', N'��ҳ��ݲ˵�',N'{"IsEnabled":false,"List":null}',null,GETDATE()
UNION ALL
SELECT 'DefaultFontSize', N'���ִ�С',N'default',NULL,GETDATE()
UNION ALL
SELECT 'LogoSettings',N'LogoͼƬ����',N'[{"FilePath":"Attachments\\Resource\\login_logo.png","FileSize":4314,"FileName":"login-logo","Extension":".png"},{"FilePath":"Attachments\\Resource\\main_logo.png","FileSize":4314,"FileName":"login-logo","Extension":".png"},{"FilePath":"Attachments\\Resource\\index_logo.png","FileSize":7235,"FileName":"main-logo","Extension":".png"},{"FilePath":"Attachments\\Resource\\login-body.jpg","FileSize":335075,"FileName":"login-body","Extension":".jpg"},{"FilePath":"Attachments\\Resource\\main-body-GaussianBlur.jpg","FileSize":335075,"FileName":"main-body","Extension":".jpg"},{"FilePath":"Attachments\\Resource\\loading.gif","FileSize":4919,"FileName":"sapi-loading-after","Extension":".gif"}]',NULL,GETDATE()
UNION ALL
SELECT 'Version',N'ϵͳ�汾��Ϣ',N'{"Name":"ƽ̨","Version":"1.3.3","Description":"","Date":"2018-05-23","Author":"���հ���","Support":"","Dependencies":[{"Name":"Sapi","Version":"1.0.5"},{"Name":"Sapi.Data.EntityFramework","Version":"1.0.5"},{"Name":"Sapi.Redis","Version":"1.0.5"},{"Name":"Sapi.WebApi","Version":"1.0.5"}]}',N'������ѯϵͳ�汾��Ϣ',GETDATE()

--3.��������Ա�˺ţ�UserType 1��ϵͳ 2��ְԱ 3������
INSERT INTO dbo.TSys_User( UserId , UserName , AliasName , HeadIconPath , UserType, CreateBy , CreateDate ,LastEditBy ,LastEditDate ,Enabled ,IsDelete ,RowIndex ,UsedById)
SELECT 'sapiadmin' , N'sapiadmin' ,N'��������Ա' ,  N'' , 1, 'sapiadmin' , GETDATE() , 'sapiadmin' , GETDATE() , 1 , 0 , 0 , NULL  

--4.�û����ñ�
INSERT INTO dbo.TSys_UserProfile( UserId ,WebTheme ,WebLayout ,[Language],[FontSize] ,LastEditDate)
SELECT 'sapiadmin' , N'default' , N'default' , N'zh-cn' ,N'default', GETDATE()

--5.�û������֤�����룺sapi@2017
INSERT INTO dbo.TSys_UserSecurity( UserId ,[Password] ,SecurityStamp ,LastPasswordChangedDate ,LastPasswordChangedBy ,Remark)
SELECT 'sapiadmin' , N'b077faefbdd0b7adc8bc0c9bfb08daf5' ,NULL , GETDATE() ,'sapiadmin' ,N'�����ʺţ�ϵͳ��ʼ��ʱ���롣' 

--6.��ʼ����Ŀ״̬����
INSERT INTO TBas_ProjectStatus(StatusId,StatusName,Remark,RowIndex,CreateBy,CreateByName,CreateDate,LastEditBy,LastEditByName,LastEditDate)
SELECT 'Decisioning','������','',10,'sapiadmin','sapiadmin',GETDATE(),'sapiadmin','sapiadmin',GETDATE()
UNION ALL
SELECT 'UnStarted','δ����','',20,'sapiadmin','sapiadmin',GETDATE(),'sapiadmin','sapiadmin',GETDATE()
UNION ALL
SELECT 'Constructing','�ڽ�δ��','',30,'sapiadmin','sapiadmin',GETDATE(),'sapiadmin','sapiadmin',GETDATE()
UNION ALL
SELECT 'Selling','�ڽ�����','',40,'sapiadmin','sapiadmin',GETDATE(),'sapiadmin','sapiadmin',GETDATE()
UNION ALL
SELECT 'Finished','�����','',50,'sapiadmin','sapiadmin',GETDATE(),'sapiadmin','sapiadmin',GETDATE()
UNION ALL
SELECT 'Aborted','��ֹ','',60,'sapiadmin','sapiadmin',GETDATE(),'sapiadmin','sapiadmin',GETDATE()

--7.ϵͳ�ܹ����г�ʼ����������
INSERT INTO dbo.TSys_Structure 
(	
	StruId, StruName, FullName, StruNo,ParentStruId, StruType, CorpId, IconPath,DeptHeaderId, ChargeLeaderId,
	FunctionHigherId, RowIndex, Outline, IsLeaf, [Level],IsDelete, CreateBy, CreateDate, LastEditBy,LastEditDate
)
VALUES  
( 
	'TotalCompany',N'����',N'����','0001',NULL,0,'TotalCompany',NULL,NULL,NULL,
		NULL,10,'0001',1,1,0,'sapiadmin',GETDATE(),'sapiadmin',GETDATE()  
)

--8.���ͨ�ý�ɫ��Ϣ
INSERT INTO dbo.TSys_Role( RoleId ,RoleName ,RoleNo ,Remark ,CreateDate ,CreateBy ,LastEditBy ,LastEditDate ,RowIndex ,IsSystem)
SELECT 'General' ,N'ͨ�ý�ɫ' ,N'' , N'���ڿ���ÿ���û������Բ�����ͨ�ò˵�������Դ��Ϣ' ,GETDATE() , 'sapiadmin' , 'sapiadmin' , GETDATE() , 10 ,1







        