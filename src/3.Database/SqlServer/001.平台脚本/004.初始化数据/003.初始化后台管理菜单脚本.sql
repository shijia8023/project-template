
----TSys_Menu-- �˵�----------------------------
INSERT INTO TSys_AdminMenu 
	(MenuId,MenuName,MenuNo,MenuPath,ParentMenuId,IconPath,Enabled,RowIndex,Remark,CreateBy,CreateDate,LastEditBy,LastEditDate)
	SELECT MenuId,MenuName,MenuNo,MenuPath,ParentMenuId,IconPath,Enabled,RowIndex,Remark,CreateBy,CreateDate,LastEditBy,LastEditDate 
	FROM 
	(
		SELECT '' AS MenuId,'' AS MenuName,'' AS MenuNo,'' AS MenuPath,'' AS ParentMenuId,'' AS IconPath,'' AS Enabled,'' AS RowIndex,'' AS Remark,'' AS CreateBy,'' AS CreateDate,'' AS LastEditBy,'' AS LastEditDate WHERE 1=2
		UNION SELECT 'A_1',N'��̨����',N'03',N'/plat/admin.html#/',NULL,N'icon-backstage','1','40',N'��̨����','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_2',N'ϵͳ����',N'03.01',N'','A_1',N'','1','10',N'ϵͳ����','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_3',N'ϵͳע��',N'03.01.01',N'/plat/admin.html#/register','A_2',N'','1','10',N'ϵͳע��','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_4',N'�ͻ��˹���',N'03.01.02',N'/plat/admin.html#/client','A_2',N'','1','20',N'�ͻ��˹���','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_5',N'ϵͳ����',N'03.01.03',N'/plat/admin.html#/config','A_2',N'','1','20',N'ϵͳ����','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_6',N'�˵�����',N'03.01.04',N'/plat/admin.html#/menu','A_2',N'','1','30',N'','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_15',N'��������',N'03.02',N'','A_1',N'','1','15',N'��������','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_16',N'��Ŀ״̬',N'03.02.01',N'/plat/admin.html#/projectStatus','A_15',N'','1','10',N'','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_7',N'ά������',N'03.03',N'','A_1',N'','1','20',N'ά������','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_8',N'��¼��־',N'03.03.01',N'/plat/admin.html#/log/login','A_7',N'','1','10',N'��־��ѯ','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_9',N'������־',N'03.03.02',N'/plat/admin.html#/log/access','A_7',N'','1','20',N'','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_10',N'������־',N'03.03.03',N'/plat/admin.html#/log/operate','A_7',N'','1','30',N'','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_11',N'�쳣��־',N'03.03.04',N'/plat/admin.html#/log/exception','A_7',N'','1','40',N'','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_12',N'֪ͨ����',N'03.04',N'','A_1',N'','1','30',N'','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_13',N'֪ͨ���',N'03.04.01',N'/plat/admin.html#/msgType?mode=0','A_12',N'','1','10',N'','sapiadmin',GETDATE(),'sapiadmin',GETDATE()

		UNION SELECT 'A_14',N'�������',N'03.04.02',N'/plat/admin.html#/msgType?mode=1','A_12',N'','1','20',N'','sapiadmin',GETDATE(),'sapiadmin',GETDATE()		

	) data WHERE NOT EXISTS( SELECT 1 FROM dbo.TSys_AdminMenu t WHERE data.MenuId=ISNULL(t.MenuId,'')) ORDER BY [MenuId]
