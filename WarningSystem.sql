USE [WarningSystem]
GO
/****** 对象:  Table [dbo].[ErrorEntity]    脚本日期: 08/18/2015 18:25:26 ******/
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
	[ExceptionMessage] [varchar](50) NULL,
	[ExceptionSource] [varchar](max) NULL,
	[ExceptionDetail] [varchar](max) NULL,
	[HttpStatusCode] [int] NULL,
	[RequestUrl] [varchar](50) NULL,
	[ServerVariables] [varchar](max) NULL,
	[QueryString] [varbinary](200) NULL,
	[Form] [varchar](max) NULL,
	[Cookies] [varchar](max) NULL,
	[DateTime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[WebSite]    脚本日期: 08/18/2015 18:25:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WebSite](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WebName] [nvarchar](50) NULL,
	[WebUrl] [varchar](50) NULL,
	[WebToken] [varchar](50) NULL,
	[Manager] [varbinary](50) NULL,
	[ManagerPhone] [varchar](50) NULL,
	[ManagerEmail] [varchar](50) NULL,
 CONSTRAINT [PK_WebSite] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[WebServer]    脚本日期: 08/18/2015 18:25:28 ******/
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
 CONSTRAINT [PK_WebServer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
