/****** Object:  Table [dbo].[TSys_Role]    Script Date: 2018/2/27 10:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_Role](
	[RoleId] [varchar](36) NOT NULL,
	[RoleName] [nvarchar](200) NOT NULL,
	[RoleNo] [nvarchar](100) NULL,
	[IsSystem] [bit] NOT NULL,
	[Remark] [nvarchar](200) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateBy] [varchar](36) NOT NULL,
	[LastEditBy] [varchar](36) NOT NULL,
	[LastEditDate] [datetime] NOT NULL,
	[RowIndex] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TSys_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSys_RoleResource]    Script Date: 2018/2/27 10:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_RoleResource](
	[RoleId] [varchar](36) NOT NULL,
	[ResourceId] [varchar](36) NOT NULL,
 CONSTRAINT [PK_dbo.TSys_RoleResource] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[ResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSys_UserRole]    Script Date: 2018/2/27 10:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_UserRole](
	[UserId] [varchar](36) NOT NULL,
	[RoleId] [varchar](36) NOT NULL,
 CONSTRAINT [PK_dbo.TSys_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Idx_RoleName]    Script Date: 2018/2/27 10:24:00 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Idx_RoleName] ON [dbo].[TSys_Role]
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TSys_RoleResource]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TSys_RoleResource_dbo.TSys_MenuResource_ResourceId] FOREIGN KEY([ResourceId])
REFERENCES [dbo].[TSys_MenuResource] ([ResourceId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TSys_RoleResource] CHECK CONSTRAINT [FK_dbo.TSys_RoleResource_dbo.TSys_MenuResource_ResourceId]
GO
ALTER TABLE [dbo].[TSys_RoleResource]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TSys_RoleResource_dbo.TSys_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[TSys_Role] ([RoleId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TSys_RoleResource] CHECK CONSTRAINT [FK_dbo.TSys_RoleResource_dbo.TSys_Role_RoleId]
GO
ALTER TABLE [dbo].[TSys_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TSys_UserRole_dbo.TSys_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[TSys_Role] ([RoleId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TSys_UserRole] CHECK CONSTRAINT [FK_dbo.TSys_UserRole_dbo.TSys_Role_RoleId]
GO
ALTER TABLE [dbo].[TSys_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TSys_UserRole_dbo.TSys_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[TSys_User] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TSys_UserRole] CHECK CONSTRAINT [FK_dbo.TSys_UserRole_dbo.TSys_User_UserId]
GO
