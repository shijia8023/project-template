/****** Object:  Table [dbo].[TSys_MsgConfig]    Script Date: 2018/2/26 19:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_MsgConfig](
	[ConfigId] [varchar](36) NOT NULL,
	[ConfigName] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](1000) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[LastEditDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.TSys_MsgConfig] PRIMARY KEY CLUSTERED 
(
	[ConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSys_MsgDone]    Script Date: 2018/2/26 19:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_MsgDone](
	[MsgId] [varchar](36) NOT NULL,
	[ToDealUrl] [nvarchar](1000) NOT NULL,
	[DealTypeId] [varchar](100) NOT NULL,
	[DealTypeName] [nvarchar](30) NOT NULL,
	[DoneUrl] [nvarchar](1000) NOT NULL,
	[BrowseUrl] [nvarchar](1000) NOT NULL,
	[FinishedDate] [datetime] NOT NULL,
	[MsgTypeId] [varchar](36) NOT NULL,
	[MsgTypeName] [nvarchar](100) NOT NULL,
	[UserId] [varchar](36) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ContentId] [varchar](1000) NOT NULL,
	[ContentName] [nvarchar](1000) NOT NULL,
	[ContentNo] [nvarchar](100) NULL,
	[ContentCreateBy] [varchar](36) NOT NULL,
	[ContentCreateByName] [nvarchar](100) NOT NULL,
	[ContentCreateDate] [datetime] NOT NULL,
	[ContentStatus] [nvarchar](50) NOT NULL,
	[ContentExtend1] [nvarchar](500) NULL,
	[ContentExtend2] [nvarchar](500) NULL,
	[ContentExtend3] [nvarchar](500) NULL,
	[ContentExtend4] [nvarchar](500) NULL,
	[ContentExtend5] [nvarchar](500) NULL,
	[ContentExtend6] [nvarchar](500) NULL,
	[ContentExtend7] [nvarchar](500) NULL,
	[ContentExtend8] [nvarchar](500) NULL,
	[ContentExtend9] [nvarchar](500) NULL,
	[ContentExtend10] [nvarchar](500) NULL,
 CONSTRAINT [PK_dbo.TSys_MsgDone] PRIMARY KEY CLUSTERED 
(
	[MsgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSys_MsgHandleUrl]    Script Date: 2018/2/26 19:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_MsgHandleUrl](
	[MsgTypeId] [varchar](36) NOT NULL,
	[DealTypeId] [varchar](100) NOT NULL,
	[DealTypeName] [nvarchar](30) NOT NULL,
	[DealUrl] [nvarchar](1000) NOT NULL,
	[RowIndex] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TSys_MsgHandleUrl] PRIMARY KEY CLUSTERED 
(
	[MsgTypeId] ASC,
	[DealTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSys_MsgPushSetting]    Script Date: 2018/2/26 19:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_MsgPushSetting](
	[MsgTypeId] [varchar](36) NOT NULL,
	[EmailEnabled] [bit] NOT NULL,
	[PhoneEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TSys_MsgPushSetting] PRIMARY KEY CLUSTERED 
(
	[MsgTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSys_MsgRead]    Script Date: 2018/2/26 19:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_MsgRead](
	[MsgId] [varchar](36) NOT NULL,
	[ToReadUrl] [nvarchar](1000) NOT NULL,
	[ReadUrl] [nvarchar](1000) NOT NULL,
	[BrowseUrl] [nvarchar](1000) NOT NULL,
	[FinishedDate] [datetime] NOT NULL,
	[MsgTypeId] [varchar](36) NOT NULL,
	[MsgTypeName] [nvarchar](100) NOT NULL,
	[UserId] [varchar](36) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ContentId] [varchar](1000) NOT NULL,
	[ContentName] [nvarchar](1000) NOT NULL,
	[ContentNo] [nvarchar](100) NULL,
	[ContentCreateBy] [varchar](36) NOT NULL,
	[ContentCreateByName] [nvarchar](100) NOT NULL,
	[ContentCreateDate] [datetime] NOT NULL,
	[ContentStatus] [nvarchar](50) NOT NULL,
	[ContentExtend1] [nvarchar](500) NULL,
	[ContentExtend2] [nvarchar](500) NULL,
	[ContentExtend3] [nvarchar](500) NULL,
	[ContentExtend4] [nvarchar](500) NULL,
	[ContentExtend5] [nvarchar](500) NULL,
	[ContentExtend6] [nvarchar](500) NULL,
	[ContentExtend7] [nvarchar](500) NULL,
	[ContentExtend8] [nvarchar](500) NULL,
	[ContentExtend9] [nvarchar](500) NULL,
	[ContentExtend10] [nvarchar](500) NULL,
 CONSTRAINT [PK_dbo.TSys_MsgRead] PRIMARY KEY CLUSTERED 
(
	[MsgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSys_MsgToDeal]    Script Date: 2018/2/26 19:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_MsgToDeal](
	[MsgId] [varchar](36) NOT NULL,
	[ToDealUrl] [nvarchar](1000) NOT NULL,
	[DealTypeId] [varchar](100) NOT NULL,
	[DealTypeName] [nvarchar](30) NOT NULL,
	[MsgTypeId] [varchar](36) NOT NULL,
	[MsgTypeName] [nvarchar](100) NOT NULL,
	[UserId] [varchar](36) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ContentId] [varchar](1000) NOT NULL,
	[ContentName] [nvarchar](1000) NOT NULL,
	[ContentNo] [nvarchar](100) NULL,
	[ContentCreateBy] [varchar](36) NOT NULL,
	[ContentCreateByName] [nvarchar](100) NOT NULL,
	[ContentCreateDate] [datetime] NOT NULL,
	[ContentStatus] [nvarchar](50) NOT NULL,
	[ContentExtend1] [nvarchar](500) NULL,
	[ContentExtend2] [nvarchar](500) NULL,
	[ContentExtend3] [nvarchar](500) NULL,
	[ContentExtend4] [nvarchar](500) NULL,
	[ContentExtend5] [nvarchar](500) NULL,
	[ContentExtend6] [nvarchar](500) NULL,
	[ContentExtend7] [nvarchar](500) NULL,
	[ContentExtend8] [nvarchar](500) NULL,
	[ContentExtend9] [nvarchar](500) NULL,
	[ContentExtend10] [nvarchar](500) NULL,
 CONSTRAINT [PK_dbo.TSys_MsgToDeal] PRIMARY KEY CLUSTERED 
(
	[MsgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSys_MsgToRead]    Script Date: 2018/2/26 19:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_MsgToRead](
	[MsgId] [varchar](36) NOT NULL,
	[ToReadUrl] [nvarchar](1000) NOT NULL,
	[MsgTypeId] [varchar](36) NOT NULL,
	[MsgTypeName] [nvarchar](100) NOT NULL,
	[UserId] [varchar](36) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ContentId] [varchar](1000) NOT NULL,
	[ContentName] [nvarchar](1000) NOT NULL,
	[ContentNo] [nvarchar](100) NULL,
	[ContentCreateBy] [varchar](36) NOT NULL,
	[ContentCreateByName] [nvarchar](100) NOT NULL,
	[ContentCreateDate] [datetime] NOT NULL,
	[ContentStatus] [nvarchar](50) NOT NULL,
	[ContentExtend1] [nvarchar](500) NULL,
	[ContentExtend2] [nvarchar](500) NULL,
	[ContentExtend3] [nvarchar](500) NULL,
	[ContentExtend4] [nvarchar](500) NULL,
	[ContentExtend5] [nvarchar](500) NULL,
	[ContentExtend6] [nvarchar](500) NULL,
	[ContentExtend7] [nvarchar](500) NULL,
	[ContentExtend8] [nvarchar](500) NULL,
	[ContentExtend9] [nvarchar](500) NULL,
	[ContentExtend10] [nvarchar](500) NULL,
 CONSTRAINT [PK_dbo.TSys_MsgToRead] PRIMARY KEY CLUSTERED 
(
	[MsgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSys_MsgType]    Script Date: 2018/2/26 19:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSys_MsgType](
	[MsgTypeId] [varchar](36) NOT NULL,
	[TypeMode] [int] NOT NULL,
	[MsgTypeName] [nvarchar](100) NOT NULL,
	[ParentTypeId] [varchar](36) NULL,
	[RowIndex] [int] NOT NULL,
	[Outline] [varchar](100) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Remark] [nvarchar](200) NULL,
	[IsSystem] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateBy] [varchar](36) NOT NULL,
	[LastEditBy] [varchar](36) NOT NULL,
	[LastEditDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.TSys_MsgType] PRIMARY KEY CLUSTERED 
(
	[MsgTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[TSys_MsgHandleUrl]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TSys_MsgHandleUrl_dbo.TSys_MsgType_MsgTypeId] FOREIGN KEY([MsgTypeId])
REFERENCES [dbo].[TSys_MsgType] ([MsgTypeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TSys_MsgHandleUrl] CHECK CONSTRAINT [FK_dbo.TSys_MsgHandleUrl_dbo.TSys_MsgType_MsgTypeId]
GO
