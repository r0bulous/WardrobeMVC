USE [master]
GO
/****** Object:  Database [WardrobeDb]    Script Date: 7/30/2018 12:21:16 AM ******/
CREATE DATABASE [WardrobeDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDb.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeDb] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeDb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BeltColors]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeltColors](
	[BeltColorId] [int] IDENTITY(1,1) NOT NULL,
	[BeltColor] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BeltColors] PRIMARY KEY CLUSTERED 
(
	[BeltColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BeltOccasions]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeltOccasions](
	[BeltOccasionId] [int] IDENTITY(1,1) NOT NULL,
	[BeltOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BeltOccasions] PRIMARY KEY CLUSTERED 
(
	[BeltOccasionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Belts]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Belts](
	[BeltId] [int] IDENTITY(1,1) NOT NULL,
	[BeltName] [nvarchar](50) NULL,
	[BeltImage] [nvarchar](100) NULL,
	[BeltTypeId] [int] NULL,
	[BeltColorId] [int] NULL,
	[BeltOccasionId] [int] NULL,
	[BeltSeasonId] [int] NULL,
	[BeltNotes] [nvarchar](150) NULL,
 CONSTRAINT [PK_Belts] PRIMARY KEY CLUSTERED 
(
	[BeltId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BeltSeasons]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeltSeasons](
	[BeltSeasonId] [int] IDENTITY(1,1) NOT NULL,
	[BeltSeason] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BeltSeasons] PRIMARY KEY CLUSTERED 
(
	[BeltSeasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BeltTypes]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeltTypes](
	[BeltTypeId] [int] IDENTITY(1,1) NOT NULL,
	[BeltType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BeltTypes] PRIMARY KEY CLUSTERED 
(
	[BeltTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitId] [int] IDENTITY(1,1) NOT NULL,
	[OutfitName] [nvarchar](50) NOT NULL,
	[ShirtId] [int] NULL,
	[PantId] [int] NULL,
	[ShoeId] [int] NULL,
	[BeltId] [int] NULL,
	[OutfitNotes] [nvarchar](150) NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PantColors]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PantColors](
	[PantColorId] [int] IDENTITY(1,1) NOT NULL,
	[PantColor] [nvarchar](50) NULL,
 CONSTRAINT [PK_PantColors] PRIMARY KEY CLUSTERED 
(
	[PantColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PantOccasions]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PantOccasions](
	[PantOccasionId] [int] IDENTITY(1,1) NOT NULL,
	[PantOccasions] [nvarchar](50) NULL,
 CONSTRAINT [PK_PantOccasions] PRIMARY KEY CLUSTERED 
(
	[PantOccasionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pants]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pants](
	[PantId] [int] IDENTITY(1,1) NOT NULL,
	[PantName] [nvarchar](50) NULL,
	[PantPhoto] [nvarchar](150) NULL,
	[PantTypeId] [int] NOT NULL,
	[PantColorId] [int] NOT NULL,
	[PantSeasonId] [int] NULL,
	[PantOccasionId] [int] NULL,
	[PantNotes] [nvarchar](150) NULL,
 CONSTRAINT [PK_Pants] PRIMARY KEY CLUSTERED 
(
	[PantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PantSeasons]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PantSeasons](
	[PantSeasonId] [int] IDENTITY(1,1) NOT NULL,
	[PantSeason] [nvarchar](50) NULL,
 CONSTRAINT [PK_PantSeasons] PRIMARY KEY CLUSTERED 
(
	[PantSeasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PantTypes]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PantTypes](
	[PantTypeId] [int] IDENTITY(1,1) NOT NULL,
	[PantType] [nvarchar](50) NULL,
 CONSTRAINT [PK_PantTypes] PRIMARY KEY CLUSTERED 
(
	[PantTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShirtColors]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShirtColors](
	[ShirtColorId] [int] IDENTITY(1,1) NOT NULL,
	[ShirtColor] [nvarchar](50) NULL,
 CONSTRAINT [PK_ShirtColors] PRIMARY KEY CLUSTERED 
(
	[ShirtColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShirtOccasions]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShirtOccasions](
	[ShirtOccasionId] [int] IDENTITY(1,1) NOT NULL,
	[ShirtOccasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_ShirtOccasions] PRIMARY KEY CLUSTERED 
(
	[ShirtOccasionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shirts]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shirts](
	[ShirtId] [int] IDENTITY(1,1) NOT NULL,
	[ShirtName] [nvarchar](50) NOT NULL,
	[ShirtImage] [nvarchar](150) NULL,
	[ShirtTypeId] [int] NULL,
	[ShirtColorId] [int] NULL,
	[ShirtOccasionId] [int] NULL,
	[ShirtSeasonId] [int] NULL,
	[ShirtNotes] [nvarchar](150) NULL,
 CONSTRAINT [PK_Shirts] PRIMARY KEY CLUSTERED 
(
	[ShirtId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShirtSeasons]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShirtSeasons](
	[ShirtSeasonId] [int] IDENTITY(1,1) NOT NULL,
	[ShirtSeason] [nvarchar](50) NULL,
 CONSTRAINT [PK_ShirtSeasons] PRIMARY KEY CLUSTERED 
(
	[ShirtSeasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShirtTypes]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShirtTypes](
	[ShirtTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ShirtType] [nvarchar](50) NULL,
 CONSTRAINT [PK_ShirtTypes] PRIMARY KEY CLUSTERED 
(
	[ShirtTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShoeColors]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoeColors](
	[ShoeColorId] [int] IDENTITY(1,1) NOT NULL,
	[ShoeColorName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ShoeColors] PRIMARY KEY CLUSTERED 
(
	[ShoeColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShoeOccasions]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoeOccasions](
	[ShoeOccasionId] [int] IDENTITY(1,1) NOT NULL,
	[ShoeOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ShoeOccasions] PRIMARY KEY CLUSTERED 
(
	[ShoeOccasionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeId] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](50) NOT NULL,
	[ShoePhoto] [nvarchar](50) NULL,
	[ShoeTypeId] [int] NULL,
	[ShoeColorId] [int] NULL,
	[ShoeSeasonId] [int] NULL,
	[ShoeOccasionId] [int] NULL,
	[ShoeNotes] [nvarchar](150) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShoeSeasons]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoeSeasons](
	[ShoeSeasonId] [int] IDENTITY(1,1) NOT NULL,
	[ShoeSeason] [nvarchar](50) NULL,
 CONSTRAINT [PK_ShoeSeasons] PRIMARY KEY CLUSTERED 
(
	[ShoeSeasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShoeTypes]    Script Date: 7/30/2018 12:21:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoeTypes](
	[ShoeTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ShoeType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ShoeTypes] PRIMARY KEY CLUSTERED 
(
	[ShoeTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201807271721369_InitialCreate', N'WardrobeMVC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10DEC2E52276983E6867576DBB7052DD18EB012A595A83441D12FEB433FA9BFD0A144DD78D1C5566C67B1C0C222876786C321391C0EF3DF3FFF8EDF3EFA9EF180A3D80DC8C43C18ED9B062676E0B864393113BAF8FE8DF9F6A7AFBF1A9F39FEA3F121A73B6274D092C413F39ED2F0D8B262FB1EFB281EF9AE1D0571B0A0233BF02DE404D6E1FEFE8FD6C1818501C2042CC318BF4B08757D9C7EC0E73420360E6982BCABC0C15ECCCBA16696A21AD7C8C771886C3C317F47911305737CF5613ACAA84DE3C473114832C3DEC2341021014514E43C7E1FE3198D02B29C855080BCBBA71003DD027931E6F21F97E45DBBB27FC8BA62950D73283B8969E0F7043C38E2BAB1C4E62B69D82C7407DA3B032DD327D6EB548313F3C2C169D1BBC00305880C8FA75EC48827E655C1E2240EAF311DE50D4719E47904707F06D1A7511571CFE8DC6EAFB0A5C3D13EFBB7674C138F26119E109CD008797BC66D32F75CFB37FC74177CC2647274305F1CBD79F51A3947AF7FC047AFAA3D85BE025DAD008A6EA320C411C8861745FF4DC3AAB7B3C48645B34A9B4C2B604B302D4CE30A3D5E62B2A4F730610EDF98C6B9FB889DBC841BD77BE2C22C8246344AE0F33AF13C34F770516F35F264FF37703D7CF57A10AED7E8C15DA6432FF0878913C1BC7A87BDB436BE77C36C7AD5C6FB23273B8F029F7DD7ED2BABFD380B92C8669D09B42477285A625A976E6C95C6DBC9A419D4F0669DA3EEBE69334965F35692B20EAD321372169B9E0DB9BCCFCBB7B3C59D84210C5E6A5A4C234D06276F5623A1F59E51A1294DE7A0ABE910E8D297BC129EF9C8F506580A3B70012F64E1463E2E7AF973008687486F996F511CC34AE0FC8AE2FB06D1E1E700A2CFB09D4460A0338AFCF0D9B9DDDE07045F27FE9CD9FDE6780D3634777F06E7C8A641744658ABB5F12E03FB5390D033E29C228ADF533B07649F77AEDF1D6010714E6C1BC7F139183376A60138D939E005A14787BDE1D802B56D5764EA21D757FB22C252FA31272DFD113585E49368C8547E4993A897C1D225DD44CD49F5A26614ADA272B2BEA232B06E92724ABDA02941AB9C19D5609E5E3A42C3BB7A29ECEEFB7AEB6DDEBAB5A0A2C619AC90F8174C7004CB98738B28C5112947A0CBBAB10D67211D3EC6F4D9F7A694D307E42543B35A6936A48BC0F0B32185DDFDD9908A09C50FAEC3BC920E07A09C18E03BD1ABCF56ED734E906CD3D3A1D6CD4D33DFCC1AA09B2E27711CD86E3A0B14A12F1EB8A8CB0F3E9CD11EC5C87A234642A06360E82EDBF2A004FA668A4675434EB18729364EEC2C343845B18D1C598DD021A78760F98EAA10AC8C88D485FB4EE209968E23D608B143500C33D525549E162EB1DD1079AD5A125A76DCC258DF0B1E62CD290E31610C5B35D185B93A00C20428F80883D2A6A1B155B1B86643D478ADBA316F7361CB7197E2121BB1C916DF596397DC7F7B16C36CD6D8068CB359255D04D006F3B661A0FCACD2D500C483CBAE19A87062D2182877A93662A0758D6DC140EB2A7971069A1D51BB8EBF705EDD35F3AC1F9437BFAD37AA6B0BB659D3C78E9966E67B421B0A2D70249BE7E99C55E247AA389C819CFC7C167357573411063EC3B41EB229FD5DA51F6A35838846D404581A5A0B28BF069480A409D543B83C96D7281DF7227AC0E671B74658BEF60BB0151B90B1ABD7A11542FDA5A9689C9D4E1F45CF0A6B908CBCD361A182A3300871F1AA77BC835274715959315D7CE13EDE70A5637C301A14D4E2B96A94947766702DE5A6D9AE259543D6C7255B4B4B82FBA4D152DE99C1B5C46DB45D490AA7A0875BB0968AEA5BF840932D8F7414BB4D5137B6B22C295E30B634E954E32B14862E5956D2AB788931CB72ABA6DFCFFA271DF9198665C78ADCA342DA82130D22B4C4422DB00649CFDD28A6A788A23962719EA9E34B64CABD55B3FCE72CABDBA73C88F93E9053B3DF590BC5E57D6DAF959D118E710E3DF499479386D115E3AF6E6EB07437E4A14811B99F065EE213BD83A56F9DDDDF55DB672532C2D812E4971C28495B929B5B577DA7819127C5408354F82FAB0F941E42A7EEDCFBAC2A5CE791EA51F20055154517B4DADAC0E91C995E8325FA88FDC7AA15E179E6154F4CA902F0A29E1895DC0609AC52D71DB59E7E52C5ACD7744714724CAA9042550F29AB99243521AB152BE16934AAA6E8CE41CE1DA9A2CBB5DD91155924556845F50AD80A99C5BAEEA88A44932AB0A2BA3B769975222EA23BBC73694F2E2B6F5DD9E176BDBD4B83F13C2BE2305B5FE50EBF0A5429EE89C56FE925305EBE93D6A43DE1AD6C4D594C633D6BD260E8579EDAED777DE169BCB2D763D6AEB46B8B7BD395BE1EAF9FCD3EAB6548073C91A4E05E1CF48403DD981FAEDA1FD148A7AD8CC4347235C2C6FE1453EC8F18C168F6D99B7A2E66CB784E708588BBC031CDD238CCC3FD8343E11DCEEEBC89B1E2D8F1148753DDC398FA986D20238B3CA0C8BE47919C1FB1C6BB9112540A3D5F10073F4ECCBFD256C7691483FD4A8BF78C8BF83D713F2750711725D8F85BCEF71C268FBEC3CB8D42D0BF5FC49388EE2ABFF8E363D674CFB889603A1D1BFB82A25719FEFA43895ED2644DD79066E5E7132F77B6D5DE26285185D9B2FA5384B94B077986904BF98D8F1EBFED2B9AF2A9C15A888AE70443E10DA242DD738155B0B44F051CF8A4E953817E9D553F1D584534EDB30197F407131F0D745F86F2965BDC871407A64D2C49A99E5B93AED7CAC0DCF6DE24E566AF35D1E5FCEB1E7083E658AFE7A2BCB0DCE5C1B64E456AF260D8DBB4FB67CF47DE9514E4D269DF6EE6F126938D1B2E94BEA81CE31DC88A5364F96C3F9378D3B6A68B00EF783A66BF7CE11D3336BECD6F3F2B78D3C6A60B10EFB8B1F5CAFDDD315BDBD6FEB9654BEBBC856E3D93574E4AD2DCE4A8A2C86D99BA59C81D8EFFF3008C20F328B30796EAD4B0A6B4D6168625899EA93E274D642C4D1C89AF44D1CCB65F5FF986DFD8594ED3CC5693C9D9C49BAFFF8DBC394D336F4D7EE436728C95198AAABCEF9675AC297DEA25E514D77AD292C2DEE6B3365ECBBFA414E24194529B3D9ADBE59793313C884A869C3A3D3284E58B62D83B2B7F9311F6EFD85D9610EC2F34126CD776CD82E6822C827CF31624CA498408CD15A6C8812DF524A2EE02D914AA59003A7D219E06F5D835C81C3B17E426A16142A1CBD89F7BB5801773029AF8A769D07599C73721FB8A87E80288E9B2C0FD0DF939713DA790FB5C1113D24030EF82877BD9585216F65D3E1548D701E908C4D557384577D80F3D008B6FC80C3DE0556403F3BBC44B643F9511401D48FB40D4D53E3E75D132427ECC31CAF6F00936ECF88F3FFD0F4B6354219A540000, N'6.2.0-61023')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'96d09316-e806-4ebe-9982-b8feecd3bab5', N'test@hi.net', 0, N'AOzXGxVc9LQ1tzUfzii2kjB0SVoUIsyGPf+3OoxJ225ADrSTirahYpMz6aHg7yNr7w==', N'431c214a-909a-49e5-b6c9-daa7c1866126', NULL, 0, 0, NULL, 1, 0, N'test@hi.net')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ce87b0e1-9ee7-4122-8e3c-3be962cca47a', N'hi@test.org', 0, N'AOWg90LW1BUZsNdzNix48+Kmkcp0gRSC5jkY5O3tZbBOcTFSM+dOZY2WxGBzK9StJg==', N'dd25d31b-3091-4789-955d-96bcc338d74c', NULL, 0, 0, NULL, 1, 0, N'hi@test.org')
SET IDENTITY_INSERT [dbo].[BeltColors] ON 

INSERT [dbo].[BeltColors] ([BeltColorId], [BeltColor]) VALUES (1, N'Black leather')
INSERT [dbo].[BeltColors] ([BeltColorId], [BeltColor]) VALUES (2, N'Brown leather')
INSERT [dbo].[BeltColors] ([BeltColorId], [BeltColor]) VALUES (3, N'Green denim')
INSERT [dbo].[BeltColors] ([BeltColorId], [BeltColor]) VALUES (4, N'Orange')
SET IDENTITY_INSERT [dbo].[BeltColors] OFF
SET IDENTITY_INSERT [dbo].[BeltOccasions] ON 

INSERT [dbo].[BeltOccasions] ([BeltOccasionId], [BeltOccasion]) VALUES (1, N'Casual')
INSERT [dbo].[BeltOccasions] ([BeltOccasionId], [BeltOccasion]) VALUES (2, N'Formal')
SET IDENTITY_INSERT [dbo].[BeltOccasions] OFF
SET IDENTITY_INSERT [dbo].[Belts] ON 

INSERT [dbo].[Belts] ([BeltId], [BeltName], [BeltImage], [BeltTypeId], [BeltColorId], [BeltOccasionId], [BeltSeasonId], [BeltNotes]) VALUES (1, N'Brown Leather Belt', N'brownbelt.jpg', 1, 2, 1, 3, N'Low-risk option for everyday use. Lorem ipsum etc geno fopus mospy woopt nine.')
INSERT [dbo].[Belts] ([BeltId], [BeltName], [BeltImage], [BeltTypeId], [BeltColorId], [BeltOccasionId], [BeltSeasonId], [BeltNotes]) VALUES (3, N'Dressy Black Belt', N'black-belt.jpg', 2, 1, 2, 1, N'Great with dress pants')
INSERT [dbo].[Belts] ([BeltId], [BeltName], [BeltImage], [BeltTypeId], [BeltColorId], [BeltOccasionId], [BeltSeasonId], [BeltNotes]) VALUES (4, N'Weathered Black Belt', N'blackbelt2.jpeg', 3, 1, 1, 2, N'It looks a little rough, but it''s sure comfy!')
SET IDENTITY_INSERT [dbo].[Belts] OFF
SET IDENTITY_INSERT [dbo].[BeltSeasons] ON 

INSERT [dbo].[BeltSeasons] ([BeltSeasonId], [BeltSeason]) VALUES (1, N'Winter')
INSERT [dbo].[BeltSeasons] ([BeltSeasonId], [BeltSeason]) VALUES (2, N'Spring')
INSERT [dbo].[BeltSeasons] ([BeltSeasonId], [BeltSeason]) VALUES (3, N'Summer')
INSERT [dbo].[BeltSeasons] ([BeltSeasonId], [BeltSeason]) VALUES (4, N'Fall')
SET IDENTITY_INSERT [dbo].[BeltSeasons] OFF
SET IDENTITY_INSERT [dbo].[BeltTypes] ON 

INSERT [dbo].[BeltTypes] ([BeltTypeId], [BeltType]) VALUES (1, N'Nautical')
INSERT [dbo].[BeltTypes] ([BeltTypeId], [BeltType]) VALUES (2, N'Generic')
INSERT [dbo].[BeltTypes] ([BeltTypeId], [BeltType]) VALUES (3, N'Casual')
SET IDENTITY_INSERT [dbo].[BeltTypes] OFF
SET IDENTITY_INSERT [dbo].[Outfits] ON 

INSERT [dbo].[Outfits] ([OutfitId], [OutfitName], [ShirtId], [PantId], [ShoeId], [BeltId], [OutfitNotes]) VALUES (1, N'Everyday Wear', 1, 2, 2, 1, N'Beautiful combo for casual everyday use. Lorem ipsum, opus modum ipsum lorem five days a week.')
INSERT [dbo].[Outfits] ([OutfitId], [OutfitName], [ShirtId], [PantId], [ShoeId], [BeltId], [OutfitNotes]) VALUES (9, N'Example Outfit', 3, 3, 1, 3, N'Great example of a database item.')
INSERT [dbo].[Outfits] ([OutfitId], [OutfitName], [ShirtId], [PantId], [ShoeId], [BeltId], [OutfitNotes]) VALUES (10, N'Excellent Ensamble', 2, 2, 3, 1, N'Great for at the office or for chopping wood.')
INSERT [dbo].[Outfits] ([OutfitId], [OutfitName], [ShirtId], [PantId], [ShoeId], [BeltId], [OutfitNotes]) VALUES (11, N'Lorem Ipsum Essential Ensamble', 4, 3, 2, 4, N'Thought it would be nice to have another database entry here.')
SET IDENTITY_INSERT [dbo].[Outfits] OFF
SET IDENTITY_INSERT [dbo].[PantColors] ON 

INSERT [dbo].[PantColors] ([PantColorId], [PantColor]) VALUES (1, N'Black')
INSERT [dbo].[PantColors] ([PantColorId], [PantColor]) VALUES (2, N'Olive Green')
INSERT [dbo].[PantColors] ([PantColorId], [PantColor]) VALUES (3, N'Blue Denim')
SET IDENTITY_INSERT [dbo].[PantColors] OFF
SET IDENTITY_INSERT [dbo].[PantOccasions] ON 

INSERT [dbo].[PantOccasions] ([PantOccasionId], [PantOccasions]) VALUES (1, N'Casual')
INSERT [dbo].[PantOccasions] ([PantOccasionId], [PantOccasions]) VALUES (2, N'Formal')
SET IDENTITY_INSERT [dbo].[PantOccasions] OFF
SET IDENTITY_INSERT [dbo].[Pants] ON 

INSERT [dbo].[Pants] ([PantId], [PantName], [PantPhoto], [PantTypeId], [PantColorId], [PantSeasonId], [PantOccasionId], [PantNotes]) VALUES (2, N'Chinos', N'beigekakhis.jpg', 2, 3, 1, 1, N'Comfortable pants for business-casual atmospheres.')
INSERT [dbo].[Pants] ([PantId], [PantName], [PantPhoto], [PantTypeId], [PantColorId], [PantSeasonId], [PantOccasionId], [PantNotes]) VALUES (3, N'Blue Jeans', N'bluejeans.jpg', 1, 3, 1, 1, N'These are jeans')
INSERT [dbo].[Pants] ([PantId], [PantName], [PantPhoto], [PantTypeId], [PantColorId], [PantSeasonId], [PantOccasionId], [PantNotes]) VALUES (4, N'Black Jeans', N'blackjeans.jpeg', 1, 1, 1, 1, N'Comfy, yet stylish.')
SET IDENTITY_INSERT [dbo].[Pants] OFF
SET IDENTITY_INSERT [dbo].[PantSeasons] ON 

INSERT [dbo].[PantSeasons] ([PantSeasonId], [PantSeason]) VALUES (1, N'Winter')
INSERT [dbo].[PantSeasons] ([PantSeasonId], [PantSeason]) VALUES (2, N'Spring')
INSERT [dbo].[PantSeasons] ([PantSeasonId], [PantSeason]) VALUES (3, N'Summer')
INSERT [dbo].[PantSeasons] ([PantSeasonId], [PantSeason]) VALUES (4, N'Fall')
SET IDENTITY_INSERT [dbo].[PantSeasons] OFF
SET IDENTITY_INSERT [dbo].[PantTypes] ON 

INSERT [dbo].[PantTypes] ([PantTypeId], [PantType]) VALUES (1, N'Jeans')
INSERT [dbo].[PantTypes] ([PantTypeId], [PantType]) VALUES (2, N'Slack')
INSERT [dbo].[PantTypes] ([PantTypeId], [PantType]) VALUES (3, N'Cargo-pants')
SET IDENTITY_INSERT [dbo].[PantTypes] OFF
SET IDENTITY_INSERT [dbo].[ShirtColors] ON 

INSERT [dbo].[ShirtColors] ([ShirtColorId], [ShirtColor]) VALUES (1, N'White')
INSERT [dbo].[ShirtColors] ([ShirtColorId], [ShirtColor]) VALUES (2, N'Black')
INSERT [dbo].[ShirtColors] ([ShirtColorId], [ShirtColor]) VALUES (3, N'Red')
INSERT [dbo].[ShirtColors] ([ShirtColorId], [ShirtColor]) VALUES (4, N'Green')
SET IDENTITY_INSERT [dbo].[ShirtColors] OFF
SET IDENTITY_INSERT [dbo].[ShirtOccasions] ON 

INSERT [dbo].[ShirtOccasions] ([ShirtOccasionId], [ShirtOccasion]) VALUES (1, N'Casual')
INSERT [dbo].[ShirtOccasions] ([ShirtOccasionId], [ShirtOccasion]) VALUES (2, N'Formal')
INSERT [dbo].[ShirtOccasions] ([ShirtOccasionId], [ShirtOccasion]) VALUES (3, N'Sports')
SET IDENTITY_INSERT [dbo].[ShirtOccasions] OFF
SET IDENTITY_INSERT [dbo].[Shirts] ON 

INSERT [dbo].[Shirts] ([ShirtId], [ShirtName], [ShirtImage], [ShirtTypeId], [ShirtColorId], [ShirtOccasionId], [ShirtSeasonId], [ShirtNotes]) VALUES (1, N'Red shirt', N'redshirt.jpg', 2, 3, 1, 2, N'Great t-shirt that is red in color!')
INSERT [dbo].[Shirts] ([ShirtId], [ShirtName], [ShirtImage], [ShirtTypeId], [ShirtColorId], [ShirtOccasionId], [ShirtSeasonId], [ShirtNotes]) VALUES (2, N'Long Sleeve Checkered', N'blackandredshirt.jpeg', 1, 3, 3, 1, N'Kind of like a lumberjack')
INSERT [dbo].[Shirts] ([ShirtId], [ShirtName], [ShirtImage], [ShirtTypeId], [ShirtColorId], [ShirtOccasionId], [ShirtSeasonId], [ShirtNotes]) VALUES (3, N'Dress shirt', N'whiteshirtwithbow.jpg', 1, 1, 4, 2, N'This pairs perfectly with a bow tie, as pictured.')
INSERT [dbo].[Shirts] ([ShirtId], [ShirtName], [ShirtImage], [ShirtTypeId], [ShirtColorId], [ShirtOccasionId], [ShirtSeasonId], [ShirtNotes]) VALUES (4, N'Bear Shirt', N'bearshirt.png', 2, 1, 1, 1, N'For those who want the silhouette of a bear on a shirt.')
SET IDENTITY_INSERT [dbo].[Shirts] OFF
SET IDENTITY_INSERT [dbo].[ShirtSeasons] ON 

INSERT [dbo].[ShirtSeasons] ([ShirtSeasonId], [ShirtSeason]) VALUES (1, N'Winter')
INSERT [dbo].[ShirtSeasons] ([ShirtSeasonId], [ShirtSeason]) VALUES (2, N'Spring')
INSERT [dbo].[ShirtSeasons] ([ShirtSeasonId], [ShirtSeason]) VALUES (3, N'Summer')
INSERT [dbo].[ShirtSeasons] ([ShirtSeasonId], [ShirtSeason]) VALUES (4, N'Fall')
INSERT [dbo].[ShirtSeasons] ([ShirtSeasonId], [ShirtSeason]) VALUES (5, N'')
SET IDENTITY_INSERT [dbo].[ShirtSeasons] OFF
SET IDENTITY_INSERT [dbo].[ShirtTypes] ON 

INSERT [dbo].[ShirtTypes] ([ShirtTypeId], [ShirtType]) VALUES (1, N'Long-sleeve')
INSERT [dbo].[ShirtTypes] ([ShirtTypeId], [ShirtType]) VALUES (2, N'Short-sleeve')
SET IDENTITY_INSERT [dbo].[ShirtTypes] OFF
SET IDENTITY_INSERT [dbo].[ShoeColors] ON 

INSERT [dbo].[ShoeColors] ([ShoeColorId], [ShoeColorName]) VALUES (1, N'White')
INSERT [dbo].[ShoeColors] ([ShoeColorId], [ShoeColorName]) VALUES (2, N'Black')
INSERT [dbo].[ShoeColors] ([ShoeColorId], [ShoeColorName]) VALUES (3, N'Olive')
SET IDENTITY_INSERT [dbo].[ShoeColors] OFF
SET IDENTITY_INSERT [dbo].[ShoeOccasions] ON 

INSERT [dbo].[ShoeOccasions] ([ShoeOccasionId], [ShoeOccasion]) VALUES (1, N'Casual')
INSERT [dbo].[ShoeOccasions] ([ShoeOccasionId], [ShoeOccasion]) VALUES (2, N'Formal')
INSERT [dbo].[ShoeOccasions] ([ShoeOccasionId], [ShoeOccasion]) VALUES (3, N'Work')
SET IDENTITY_INSERT [dbo].[ShoeOccasions] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeId], [ShoeName], [ShoePhoto], [ShoeTypeId], [ShoeColorId], [ShoeSeasonId], [ShoeOccasionId], [ShoeNotes]) VALUES (1, N'Everyday', N'blue loafers.jpg', 1, 1, 1, 1, N'Casual shoes for everyday use')
INSERT [dbo].[Shoes] ([ShoeId], [ShoeName], [ShoePhoto], [ShoeTypeId], [ShoeColorId], [ShoeSeasonId], [ShoeOccasionId], [ShoeNotes]) VALUES (2, N'Dickey''s Work Shoes', N'workshoes.jpeg', 2, 3, 1, 1, N'These work shoes are excellent for wearing inside to look like you work outside.')
INSERT [dbo].[Shoes] ([ShoeId], [ShoeName], [ShoePhoto], [ShoeTypeId], [ShoeColorId], [ShoeSeasonId], [ShoeOccasionId], [ShoeNotes]) VALUES (3, N'Best Shoe Ever', N'dressybrownshoes.jpeg', 3, 3, 4, 2, N'Looking sharp!')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[ShoeSeasons] ON 

INSERT [dbo].[ShoeSeasons] ([ShoeSeasonId], [ShoeSeason]) VALUES (1, N'Winter')
INSERT [dbo].[ShoeSeasons] ([ShoeSeasonId], [ShoeSeason]) VALUES (2, N'Spring')
INSERT [dbo].[ShoeSeasons] ([ShoeSeasonId], [ShoeSeason]) VALUES (3, N'Summer')
INSERT [dbo].[ShoeSeasons] ([ShoeSeasonId], [ShoeSeason]) VALUES (4, N'Fall')
SET IDENTITY_INSERT [dbo].[ShoeSeasons] OFF
SET IDENTITY_INSERT [dbo].[ShoeTypes] ON 

INSERT [dbo].[ShoeTypes] ([ShoeTypeId], [ShoeType]) VALUES (1, N'Walking')
INSERT [dbo].[ShoeTypes] ([ShoeTypeId], [ShoeType]) VALUES (2, N'Running')
INSERT [dbo].[ShoeTypes] ([ShoeTypeId], [ShoeType]) VALUES (3, N'Bowling')
INSERT [dbo].[ShoeTypes] ([ShoeTypeId], [ShoeType]) VALUES (4, N'Loafers')
SET IDENTITY_INSERT [dbo].[ShoeTypes] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/30/2018 12:21:16 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/30/2018 12:21:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/30/2018 12:21:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 7/30/2018 12:21:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/30/2018 12:21:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/30/2018 12:21:16 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Belts]  WITH CHECK ADD  CONSTRAINT [FK_Belts_BeltColors] FOREIGN KEY([BeltColorId])
REFERENCES [dbo].[BeltColors] ([BeltColorId])
GO
ALTER TABLE [dbo].[Belts] CHECK CONSTRAINT [FK_Belts_BeltColors]
GO
ALTER TABLE [dbo].[Belts]  WITH CHECK ADD  CONSTRAINT [FK_Belts_BeltOccasions] FOREIGN KEY([BeltOccasionId])
REFERENCES [dbo].[BeltOccasions] ([BeltOccasionId])
GO
ALTER TABLE [dbo].[Belts] CHECK CONSTRAINT [FK_Belts_BeltOccasions]
GO
ALTER TABLE [dbo].[Belts]  WITH CHECK ADD  CONSTRAINT [FK_Belts_BeltSeasons] FOREIGN KEY([BeltSeasonId])
REFERENCES [dbo].[BeltSeasons] ([BeltSeasonId])
GO
ALTER TABLE [dbo].[Belts] CHECK CONSTRAINT [FK_Belts_BeltSeasons]
GO
ALTER TABLE [dbo].[Belts]  WITH CHECK ADD  CONSTRAINT [FK_Belts_BeltTypes] FOREIGN KEY([BeltTypeId])
REFERENCES [dbo].[BeltTypes] ([BeltTypeId])
GO
ALTER TABLE [dbo].[Belts] CHECK CONSTRAINT [FK_Belts_BeltTypes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Belts] FOREIGN KEY([BeltId])
REFERENCES [dbo].[Belts] ([BeltId])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Belts]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Pants] FOREIGN KEY([PantId])
REFERENCES [dbo].[Pants] ([PantId])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Pants]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shirts] FOREIGN KEY([ShirtId])
REFERENCES [dbo].[Shirts] ([ShirtId])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shirts]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeId])
REFERENCES [dbo].[Shoes] ([ShoeId])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Pants]  WITH CHECK ADD  CONSTRAINT [FK_Pants_PantColors] FOREIGN KEY([PantColorId])
REFERENCES [dbo].[PantColors] ([PantColorId])
GO
ALTER TABLE [dbo].[Pants] CHECK CONSTRAINT [FK_Pants_PantColors]
GO
ALTER TABLE [dbo].[Pants]  WITH CHECK ADD  CONSTRAINT [FK_Pants_PantOccasions] FOREIGN KEY([PantOccasionId])
REFERENCES [dbo].[PantOccasions] ([PantOccasionId])
GO
ALTER TABLE [dbo].[Pants] CHECK CONSTRAINT [FK_Pants_PantOccasions]
GO
ALTER TABLE [dbo].[Pants]  WITH CHECK ADD  CONSTRAINT [FK_Pants_PantSeasons] FOREIGN KEY([PantSeasonId])
REFERENCES [dbo].[PantSeasons] ([PantSeasonId])
GO
ALTER TABLE [dbo].[Pants] CHECK CONSTRAINT [FK_Pants_PantSeasons]
GO
ALTER TABLE [dbo].[Pants]  WITH CHECK ADD  CONSTRAINT [FK_Pants_PantTypes] FOREIGN KEY([PantTypeId])
REFERENCES [dbo].[PantTypes] ([PantTypeId])
GO
ALTER TABLE [dbo].[Pants] CHECK CONSTRAINT [FK_Pants_PantTypes]
GO
ALTER TABLE [dbo].[Shirts]  WITH CHECK ADD  CONSTRAINT [FK_Shirts_ShirtColors] FOREIGN KEY([ShirtColorId])
REFERENCES [dbo].[ShirtColors] ([ShirtColorId])
GO
ALTER TABLE [dbo].[Shirts] CHECK CONSTRAINT [FK_Shirts_ShirtColors]
GO
ALTER TABLE [dbo].[Shirts]  WITH CHECK ADD  CONSTRAINT [FK_Shirts_ShirtOccasions] FOREIGN KEY([ShirtSeasonId])
REFERENCES [dbo].[ShirtOccasions] ([ShirtOccasionId])
GO
ALTER TABLE [dbo].[Shirts] CHECK CONSTRAINT [FK_Shirts_ShirtOccasions]
GO
ALTER TABLE [dbo].[Shirts]  WITH CHECK ADD  CONSTRAINT [FK_Shirts_ShirtSeasons] FOREIGN KEY([ShirtSeasonId])
REFERENCES [dbo].[ShirtSeasons] ([ShirtSeasonId])
GO
ALTER TABLE [dbo].[Shirts] CHECK CONSTRAINT [FK_Shirts_ShirtSeasons]
GO
ALTER TABLE [dbo].[Shirts]  WITH CHECK ADD  CONSTRAINT [FK_Shirts_ShirtTypes] FOREIGN KEY([ShirtTypeId])
REFERENCES [dbo].[ShirtTypes] ([ShirtTypeId])
GO
ALTER TABLE [dbo].[Shirts] CHECK CONSTRAINT [FK_Shirts_ShirtTypes]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_ShoeColors] FOREIGN KEY([ShoeColorId])
REFERENCES [dbo].[ShoeColors] ([ShoeColorId])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_ShoeColors]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_ShoeOccasions] FOREIGN KEY([ShoeOccasionId])
REFERENCES [dbo].[ShoeOccasions] ([ShoeOccasionId])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_ShoeOccasions]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_ShoeSeasons] FOREIGN KEY([ShoeSeasonId])
REFERENCES [dbo].[ShoeSeasons] ([ShoeSeasonId])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_ShoeSeasons]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_ShoeTypes] FOREIGN KEY([ShoeTypeId])
REFERENCES [dbo].[ShoeTypes] ([ShoeTypeId])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_ShoeTypes]
GO
USE [master]
GO
ALTER DATABASE [WardrobeDb] SET  READ_WRITE 
GO
