/****** Object:  Table [dbo].[TDemo_Contacter]    Script Date: 2018/2/7 17:38:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TDemo_Contacter](
	[ContacterId] [varchar](36) NOT NULL,
	[CustomerId] [varchar](36) NOT NULL,
	[ContacterName] [nvarchar](100) NOT NULL,
	[Sex] [int] NOT NULL,
	[MobileTelephone] [varchar](100) NULL,
	[Remark] [nvarchar](200) NULL,
	[RowIndex] [int] NOT NULL,
 CONSTRAINT [PK_TDemo_Contacter] PRIMARY KEY CLUSTERED 
(
	[ContacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TDemo_Customer]    Script Date: 2018/2/7 17:38:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TDemo_Customer](
	[CustomerId] [varchar](36) NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[CustomerNo] [nvarchar](100) NOT NULL,
	[CustomerLevel] [int] NOT NULL,
	[CustomerAddress] [nvarchar](100) NULL,
	[Description] [nvarchar](200) NULL,
	[IsDelete] [bit] NOT NULL,
	[RowIndex] [int] NOT NULL,
	[CreateBy] [varchar](36) NOT NULL,
	[CreateByName] [nvarchar](100) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastEditBy] [varchar](36) NOT NULL,
	[LastEditByName] [nvarchar](100) NOT NULL,
	[LastEditDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.TDemo_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
