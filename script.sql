USE [master]
GO
/****** Object:  Database [WardrobeDb]    Script Date: 7/27/2018 12:55:07 PM ******/
CREATE DATABASE [WardrobeDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
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
/****** Object:  Table [dbo].[BeltColors]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[BeltOccasions]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[Belts]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[BeltSeasons]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[BeltTypes]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[Outfits]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[PantColors]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[PantOccasions]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[Pants]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[PantSeasons]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[PantTypes]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[ShirtColors]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[ShirtOccasions]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[Shirts]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[ShirtSeasons]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[ShirtTypes]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[ShoeColors]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[ShoeOccasions]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[Shoes]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[ShoeSeasons]    Script Date: 7/27/2018 12:55:08 PM ******/
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
/****** Object:  Table [dbo].[ShoeTypes]    Script Date: 7/27/2018 12:55:08 PM ******/
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
