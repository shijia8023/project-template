/****** Object:  Table [dbo].[TSys_Notice]    Script Date: 2018/2/26 19:59:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSys_Notice](
	[NoticeId] [nvarchar](36) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Content] [nvarchar](2000) NULL,
	[PublishedDate] [datetime] NOT NULL,
	[NoticeUserType] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TSys_Notice] PRIMARY KEY CLUSTERED 
(
	[NoticeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TSys_NoticeState]    Script Date: 2018/2/26 19:59:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSys_NoticeState](
	[NoticeId] [nvarchar](36) NOT NULL,
	[UserId] [nvarchar](36) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[ReadDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.TSys_NoticeState] PRIMARY KEY CLUSTERED 
(
	[NoticeId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TSys_NoticeUser]    Script Date: 2018/2/26 19:59:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSys_NoticeUser](
	[NoticeId] [nvarchar](36) NOT NULL,
	[TypeId] [nvarchar](36) NOT NULL,
	[UserType] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TSys_NoticeUser] PRIMARY KEY CLUSTERED 
(
	[NoticeId] ASC,
	[TypeId] ASC,
	[UserType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[TSys_NoticeState]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TSys_NoticeState_dbo.TSys_Notice_NoticeId] FOREIGN KEY([NoticeId])
REFERENCES [dbo].[TSys_Notice] ([NoticeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TSys_NoticeState] CHECK CONSTRAINT [FK_dbo.TSys_NoticeState_dbo.TSys_Notice_NoticeId]
GO
ALTER TABLE [dbo].[TSys_NoticeUser]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TSys_NoticeUser_dbo.TSys_Notice_NoticeId] FOREIGN KEY([NoticeId])
REFERENCES [dbo].[TSys_Notice] ([NoticeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TSys_NoticeUser] CHECK CONSTRAINT [FK_dbo.TSys_NoticeUser_dbo.TSys_Notice_NoticeId]
GO
