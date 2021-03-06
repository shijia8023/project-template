/****** Object:  Table [dbo].[TSys_AdminMenu]    Script Date: 2018/2/26 19:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_AdminMenu](
	[MenuId] [varchar](36) NOT NULL,
	[MenuName] [nvarchar](10) NOT NULL,
	[MenuNo] [nvarchar](100) NULL,
	[MenuPath] [nvarchar](1000) NULL,
	[ParentMenuId] [varchar](36) NULL,
	[IconPath] [nvarchar](1000) NULL,
	[Enabled] [bit] NOT NULL,
	[RowIndex] [int] NOT NULL,
	[Remark] [nvarchar](2000) NULL,
	[CreateBy] [varchar](36) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastEditBy] [varchar](36) NOT NULL,
	[LastEditDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.TSys_AdminMenu] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSys_Menu]    Script Date: 2018/2/26 19:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_Menu](
	[MenuId] [varchar](36) NOT NULL,
	[ClientId] [varchar](36) NOT NULL,
	[MenuName] [nvarchar](10) NOT NULL,
	[MenuNo] [nvarchar](100) NULL,
	[MenuPath] [nvarchar](1000) NULL,
	[ParentMenuId] [varchar](36) NULL,
	[IconPath] [nvarchar](1000) NULL,
	[Enabled] [bit] NOT NULL,
	[RowIndex] [int] NOT NULL,
	[Remark] [nvarchar](2000) NULL,
	[CreateBy] [varchar](36) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastEditBy] [varchar](36) NOT NULL,
	[LastEditDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.TSys_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSys_MenuResource]    Script Date: 2018/2/26 19:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_MenuResource](
	[ResourceId] [varchar](36) NOT NULL,
	[MenuId] [varchar](36) NOT NULL,
	[ResourceCode] [varchar](30) NOT NULL,
	[ResourceName] [nvarchar](100) NOT NULL,
	[Remark] [nvarchar](2000) NULL,
	[RowIndex] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TSys_MenuResource] PRIMARY KEY CLUSTERED 
(
	[ResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSys_MenuResourcePath]    Script Date: 2018/2/26 19:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_MenuResourcePath](
	[ResourceId] [varchar](36) NOT NULL,
	[Method] [varchar](20) NOT NULL,
	[Path] [varchar](500) NOT NULL,
	[RowIndex] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TSys_MenuResourcePath] PRIMARY KEY CLUSTERED 
(
	[ResourceId] ASC,
	[Method] ASC,
	[Path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[TSys_AdminMenu]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TSys_AdminMenu_dbo.TSys_AdminMenu_ParentMenuId] FOREIGN KEY([ParentMenuId])
REFERENCES [dbo].[TSys_AdminMenu] ([MenuId])
GO
ALTER TABLE [dbo].[TSys_AdminMenu] CHECK CONSTRAINT [FK_dbo.TSys_AdminMenu_dbo.TSys_AdminMenu_ParentMenuId]
GO
ALTER TABLE [dbo].[TSys_Menu]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TSys_Menu_dbo.TSys_Menu_ParentMenuId] FOREIGN KEY([ParentMenuId])
REFERENCES [dbo].[TSys_Menu] ([MenuId])
GO
ALTER TABLE [dbo].[TSys_Menu] CHECK CONSTRAINT [FK_dbo.TSys_Menu_dbo.TSys_Menu_ParentMenuId]
GO
ALTER TABLE [dbo].[TSys_MenuResource]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TSys_MenuResource_dbo.TSys_Menu_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[TSys_Menu] ([MenuId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TSys_MenuResource] CHECK CONSTRAINT [FK_dbo.TSys_MenuResource_dbo.TSys_Menu_MenuId]
GO
ALTER TABLE [dbo].[TSys_MenuResourcePath]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TSys_MenuResourcePath_dbo.TSys_MenuResource_ResourceId] FOREIGN KEY([ResourceId])
REFERENCES [dbo].[TSys_MenuResource] ([ResourceId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TSys_MenuResourcePath] CHECK CONSTRAINT [FK_dbo.TSys_MenuResourcePath_dbo.TSys_MenuResource_ResourceId]
GO
