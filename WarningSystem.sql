USE [WarningSystem]
GO
/****** 对象:  Table [dbo].[WebServer]    脚本日期: 08/21/2015 18:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WebServer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WebId] [int] NULL,
	[ServerIp] [varchar](50) NULL,
	[Enable] [int] NULL,
 CONSTRAINT [PK_WebServer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[WebSite]    脚本日期: 08/21/2015 18:01:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WebSite](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WebName] [nvarchar](50) NULL,
	[Host] [varchar](50) NULL,
	[WebToken] [varchar](50) NULL,
	[Manager] [varchar](50) NULL,
	[ManagerPhone] [varchar](50) NULL,
	[ManagerEmail] [varchar](50) NULL,
	[CheckUrl] [varchar](50) NULL,
	[Enable] [int] NULL,
 CONSTRAINT [PK_WebSite] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[ErrorEntity]    脚本日期: 08/21/2015 18:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ErrorEntity](
	[Id] [varchar](50) NULL,
	[WebToken] [varchar](50) NULL,
	[MachineName] [varchar](50) NULL,
	[Ip] [varchar](50) NULL,
	[ExceptionType] [varchar](50) NULL,
	[ExceptionMessage] [nvarchar](500) NULL,
	[ExceptionSource] [varchar](max) NULL,
	[ExceptionDetail] [varchar](max) NULL,
	[HttpStatusCode] [int] NULL,
	[RequestUrl] [varchar](50) NULL,
	[ServerVariables] [varchar](max) NULL,
	[QueryString] [varchar](max) NULL,
	[Form] [varchar](max) NULL,
	[Cookies] [varchar](max) NULL,
	[DateTime] [datetime] NULL,
	[NotifyStatus] [int] NULL,
	[Type] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
