--��������������г�ʼ��������������
INSERT INTO dbo.TSup_SupplierBaseClass
(	
	ClassId, ClassName, RowIndex, IsDelete, Remark, CreateBy, CreateByName, CreateDate, LastEditBy, LastEditByName, LastEditDate
)
SELECT NEWID() , 'ʩ��' , 10 , 0 , '',  '��������Ա' , 'sapiadmin', GETDATE(), '��������Ա' , 'sapiadmin', GETDATE()
UNION ALL
SELECT NEWID() , '����' , 20 , 0 , '',  '��������Ա' , 'sapiadmin', GETDATE(), '��������Ա' , 'sapiadmin', GETDATE()
UNION ALL
SELECT NEWID() , '���' , 30 , 0 , '',  '��������Ա' , 'sapiadmin', GETDATE(), '��������Ա' , 'sapiadmin', GETDATE()
UNION ALL
SELECT NEWID() , '����' , 40 , 0 , '',  '��������Ա' , 'sapiadmin', GETDATE(), '��������Ա' , 'sapiadmin', GETDATE()
UNION ALL
SELECT NEWID() , '��ѯ' , 50 , 0 , '',  '��������Ա' , 'sapiadmin', GETDATE(), '��������Ա' , 'sapiadmin', GETDATE()
UNION ALL
SELECT NEWID() , '�г�' , 60 , 0 , '',  '��������Ա' , 'sapiadmin', GETDATE(), '��������Ա' , 'sapiadmin', GETDATE()
UNION ALL
SELECT NEWID() , '����' , 70 , 0 , '',  '��������Ա' , 'sapiadmin', GETDATE(), '��������Ա' , 'sapiadmin', GETDATE()