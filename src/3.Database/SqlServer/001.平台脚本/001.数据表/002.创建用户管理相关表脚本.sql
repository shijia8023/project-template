/****** Object:  Table [dbo].[TSys_User]    Script Date: 2018/2/27 10:20:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_User](
	[UserId] [varchar](36) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[AliasName] [nvarchar](100) NOT NULL,
	[HeadIconPath] [nvarchar](1000) NULL,
	[UserType] [int] NOT NULL,
	[UsedById] [varchar](36) NULL,
	[MobileTelephone] [varchar](100) NULL,
	[OfficePhone] [varchar](100) NULL,
	[QQ] [varchar](100) NULL,
	[WeChat] [varchar](100) NULL,
	[MicroBlog] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Enabled] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[RowIndex] [int] NOT NULL,
	[CreateBy] [varchar](36) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastEditBy] [varchar](36) NOT NULL,
	[LastEditDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.TSys_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSys_UserProfile]    Script Date: 2018/2/27 10:20:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_UserProfile](
	[UserId] [varchar](36) NOT NULL,
	[WebTheme] [nvarchar](100) NOT NULL,
	[WebLayout] [nvarchar](100) NOT NULL,
	[Language] [nvarchar](50) NOT NULL,
	[FontSize] [nvarchar](50) NOT NULL,
	[LastEditDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.TSys_UserProfile] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSys_UserSecurity]    Script Date: 2018/2/27 10:20:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_UserSecurity](
	[UserId] [varchar](36) NOT NULL,
	[Password] [nvarchar](200) NOT NULL,
	[SecurityStamp] [varchar](36) NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastPasswordChangedBy] [varchar](36) NOT NULL,
	[Remark] [nvarchar](2000) NULL,
 CONSTRAINT [PK_dbo.TSys_UserSecurity] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Idx_UsedById_IsDelete]    Script Date: 2018/2/27 10:20:55 ******/
CREATE NONCLUSTERED INDEX [Idx_UsedById_IsDelete] ON [dbo].[TSys_User]
(
	[UsedById] ASC,
	[IsDelete] ASC
)
INCLUDE ( 	[UserId],
	[AliasName]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Idx_UserName_IsDelete]    Script Date: 2018/2/27 10:20:55 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Idx_UserName_IsDelete] ON [dbo].[TSys_User]
(
	[UserName] ASC,
	[IsDelete] ASC
)
WHERE ([IsDelete]=(0))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TSys_UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TSys_UserProfile_dbo.TSys_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[TSys_User] ([UserId])
GO
ALTER TABLE [dbo].[TSys_UserProfile] CHECK CONSTRAINT [FK_dbo.TSys_UserProfile_dbo.TSys_User_UserId]
GO
ALTER TABLE [dbo].[TSys_UserSecurity]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TSys_UserSecurity_dbo.TSys_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[TSys_User] ([UserId])
GO
ALTER TABLE [dbo].[TSys_UserSecurity] CHECK CONSTRAINT [FK_dbo.TSys_UserSecurity_dbo.TSys_User_UserId]
GO
