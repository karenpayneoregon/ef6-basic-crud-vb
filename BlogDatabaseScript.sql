USE [master]
GO
/****** Object:  Database [EntityFrameworkDatabase]    Script Date: 3/19/2020 4:04:36 AM ******/
CREATE DATABASE [EntityFrameworkDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EntityFrameworkDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\EntityFrameworkDatabase.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EntityFrameworkDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\EntityFrameworkDatabase_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EntityFrameworkDatabase] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EntityFrameworkDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EntityFrameworkDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EntityFrameworkDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EntityFrameworkDatabase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EntityFrameworkDatabase]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 3/19/2020 4:04:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NULL,
	[BlogName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post]    Script Date: 3/19/2020 4:04:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostId] [int] IDENTITY(1,1) NOT NULL,
	[BlogId] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[Contents] [nvarchar](max) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([BlogId], [Url], [BlogName]) VALUES (1, N'http://blogs.msdn.com/adonet', N'ADO.NET blog')
INSERT [dbo].[Blog] ([BlogId], [Url], [BlogName]) VALUES (2, N'https://devblogs.microsoft.com/dotnet/tag/entity-framework/', N'Entity Framework blog')
INSERT [dbo].[Blog] ([BlogId], [Url], [BlogName]) VALUES (3, N'https://devblogs.microsoft.com/vbteam/', N'VB team blog')
SET IDENTITY_INSERT [dbo].[Blog] OFF
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([PostId], [BlogId], [Title], [Contents]) VALUES (1, 1, N'Hello world', N'First post!!')
INSERT [dbo].[Post] ([PostId], [BlogId], [Title], [Contents]) VALUES (2, 1, N'Welcome', N'Second post')
INSERT [dbo].[Post] ([PostId], [BlogId], [Title], [Contents]) VALUES (3, 2, N'Announcing Entity Framework Core 5.0 Preview 1a', N'Today we are excited to announce the first preview release of EF Core 5.0.')
INSERT [dbo].[Post] ([PostId], [BlogId], [Title], [Contents]) VALUES (4, 2, N'Announcing Entity Framework Core 3.1 and Entity Framework 6.4', N'We are excited to announce the general availability of EF Core 3.1 and EF 6.4 on nuget.org.')
INSERT [dbo].[Post] ([PostId], [BlogId], [Title], [Contents]) VALUES (5, 2, N'Announcing Entity Framework Core 3.0 and Entity Framework 6.3 General Availability', N'We are extremely excited to announce the general availability of EF Core 3.0and EF 6.3 on nuget.org.')
INSERT [dbo].[Post] ([PostId], [BlogId], [Title], [Contents]) VALUES (6, 2, N'Announcing Entity Framework Core 3.0 Preview 4', N'Today, we are making the fourth preview of Entity Framework Core 3.0 available on NuGet')
INSERT [dbo].[Post] ([PostId], [BlogId], [Title], [Contents]) VALUES (7, 3, N'Visual Basic support planned for .NET 5.0', N'We’ve heard your feedback that you want Visual Basic on .NET Core. Visual Basic in .NET 5 will support additional application types.')
INSERT [dbo].[Post] ([PostId], [BlogId], [Title], [Contents]) VALUES (8, 3, N'Visual Basic in .NET Core 3.0', N'This strategy described in this 2018 post has been replaced with the one in this post.')
INSERT [dbo].[Post] ([PostId], [BlogId], [Title], [Contents]) VALUES (9, 3, N'New for Visual Basic: .NET Standard Class Libraries and the dotnet CLI!', N'Visual Studio 2017 15.3 Preview 1 included templates for VB class libraries targeting .NET Standard class libraries and for .NET Core console apps. With the release of .NET Core 2.0 today those templates go-live.')
INSERT [dbo].[Post] ([PostId], [BlogId], [Title], [Contents]) VALUES (10, NULL, N'Delivering on the promise of security AI to help defenders protect today’s hybrid environments', N'Technology is reshaping society – artificial intelligence (AI) is enabling us to increase crop yields, protect endangered animals and improve access to healthcare. ')
INSERT [dbo].[Post] ([PostId], [BlogId], [Title], [Contents]) VALUES (11, NULL, N'Imagining the future from an alternative perspective', N'What do you believe creates our future? We believe it’s imagination.')
SET IDENTITY_INSERT [dbo].[Post] OFF
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Blog] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blog] ([BlogId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Blog]
GO
USE [master]
GO
ALTER DATABASE [EntityFrameworkDatabase] SET  READ_WRITE 
GO
