USE [UdemyETicaretDB]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Categories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT IF EXISTS [FK_Orders_Members]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT IF EXISTS [FK_Orders_Addresses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT IF EXISTS [FK_OrderDetails_Products]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT IF EXISTS [FK_OrderDetails_Orders]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Messages]') AND type in (N'U'))
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT IF EXISTS [FK_Messages_Messages]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Messages]') AND type in (N'U'))
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT IF EXISTS [FK_Messages_Members1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Messages]') AND type in (N'U'))
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT IF EXISTS [FK_Messages_Members]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MessageReplies]') AND type in (N'U'))
ALTER TABLE [dbo].[MessageReplies] DROP CONSTRAINT IF EXISTS [FK_MessageReplies_Messages]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MessageReplies]') AND type in (N'U'))
ALTER TABLE [dbo].[MessageReplies] DROP CONSTRAINT IF EXISTS [FK_MessageReplies_Members1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MessageReplies]') AND type in (N'U'))
ALTER TABLE [dbo].[MessageReplies] DROP CONSTRAINT IF EXISTS [FK_MessageReplies_Members]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comments]') AND type in (N'U'))
ALTER TABLE [dbo].[Comments] DROP CONSTRAINT IF EXISTS [FK_Comments_Products]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comments]') AND type in (N'U'))
ALTER TABLE [dbo].[Comments] DROP CONSTRAINT IF EXISTS [FK_Comments_Members]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Addresses]') AND type in (N'U'))
ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT IF EXISTS [FK_Addresses_Members]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [DF_Products_StarGivenMemberCount]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [DF_Products_UnitsInStock]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [DF_Products_IsContinued]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [DF_Products_StarPoint]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT IF EXISTS [DF_OrderDetails_Discount]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT IF EXISTS [DF_OrderDetails_Quantity]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT IF EXISTS [DF_OrderDetails_Price]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Messages]') AND type in (N'U'))
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT IF EXISTS [DF_Messages_IsRead]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MessageReplies]') AND type in (N'U'))
ALTER TABLE [dbo].[MessageReplies] DROP CONSTRAINT IF EXISTS [DF_MessageReplies_IsRead]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 01.03.2018 22:43:21 ******/
DROP TABLE IF EXISTS [dbo].[Products]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 01.03.2018 22:43:21 ******/
DROP TABLE IF EXISTS [dbo].[Orders]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 01.03.2018 22:43:21 ******/
DROP TABLE IF EXISTS [dbo].[OrderDetails]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 01.03.2018 22:43:21 ******/
DROP TABLE IF EXISTS [dbo].[Messages]
GO
/****** Object:  Table [dbo].[MessageReplies]    Script Date: 01.03.2018 22:43:21 ******/
DROP TABLE IF EXISTS [dbo].[MessageReplies]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 01.03.2018 22:43:21 ******/
DROP TABLE IF EXISTS [dbo].[Members]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 01.03.2018 22:43:21 ******/
DROP TABLE IF EXISTS [dbo].[Comments]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 01.03.2018 22:43:21 ******/
DROP TABLE IF EXISTS [dbo].[Categories]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 01.03.2018 22:43:21 ******/
DROP TABLE IF EXISTS [dbo].[Addresses]
GO
USE [master]
GO
/****** Object:  Database [UdemyETicaretDB]    Script Date: 01.03.2018 22:43:21 ******/
DROP DATABASE IF EXISTS [UdemyETicaretDB]
GO
/****** Object:  Database [UdemyETicaretDB]    Script Date: 01.03.2018 22:43:21 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'UdemyETicaretDB')
BEGIN
CREATE DATABASE [UdemyETicaretDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UdemyETicaretDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\UdemyETicaretDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UdemyETicaretDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\UdemyETicaretDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END
GO
ALTER DATABASE [UdemyETicaretDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UdemyETicaretDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UdemyETicaretDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UdemyETicaretDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UdemyETicaretDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UdemyETicaretDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UdemyETicaretDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UdemyETicaretDB] SET  MULTI_USER 
GO
ALTER DATABASE [UdemyETicaretDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UdemyETicaretDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UdemyETicaretDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UdemyETicaretDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UdemyETicaretDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UdemyETicaretDB] SET QUERY_STORE = OFF
GO
USE [UdemyETicaretDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [UdemyETicaretDB]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 01.03.2018 22:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Addresses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Addresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[Member_Id] [int] NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 01.03.2018 22:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 01.03.2018 22:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](300) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Members]    Script Date: 01.03.2018 22:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Members]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Members](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NULL,
	[Surname] [nvarchar](25) NULL,
	[Email] [nvarchar](60) NOT NULL,
	[Bio] [nvarchar](300) NULL,
	[Password] [nvarchar](60) NOT NULL,
	[ProfileImageName] [nvarchar](50) NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MessageReplies]    Script Date: 01.03.2018 22:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MessageReplies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MessageReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](300) NOT NULL,
	[Message_Id] [int] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[Member_From_Id] [int] NULL,
	[Member_To_Id] [int] NULL,
	[IsRead] [bit] NOT NULL,
 CONSTRAINT [PK_MessageReplies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 01.03.2018 22:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Messages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](50) NULL,
	[Text] [nvarchar](300) NULL,
	[IsRead] [bit] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[Member_From_Id] [int] NULL,
	[Member_To_Id] [int] NULL,
	[Parent_Message_Id] [int] NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 01.03.2018 22:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Price] [decimal](8, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [tinyint] NOT NULL,
	[Order_Id] [int] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 01.03.2018 22:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](12) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Member_Id] [int] NOT NULL,
	[Address_Id] [int] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[Description] [nvarchar](150) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Products]    Script Date: 01.03.2018 22:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Price] [decimal](8, 2) NOT NULL,
	[StarPoint] [int] NOT NULL,
	[ImageName] [nvarchar](50) NOT NULL,
	[IsContinued] [bit] NOT NULL,
	[UnitsInStock] [int] NOT NULL,
	[StarGivenMemberCount] [int] NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[Category_Id] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_MessageReplies_IsRead]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MessageReplies] ADD  CONSTRAINT [DF_MessageReplies_IsRead]  DEFAULT ((0)) FOR [IsRead]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Messages_IsRead]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_IsRead]  DEFAULT ((0)) FOR [IsRead]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_OrderDetails_Price]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_OrderDetails_Price]  DEFAULT ((0)) FOR [Price]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_OrderDetails_Quantity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_OrderDetails_Quantity]  DEFAULT ((1)) FOR [Quantity]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_OrderDetails_Discount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_OrderDetails_Discount]  DEFAULT ((0)) FOR [Discount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Products_StarPoint]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_StarPoint]  DEFAULT ((0)) FOR [StarPoint]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Products_IsContinued]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_IsContinued]  DEFAULT ((1)) FOR [IsContinued]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Products_UnitsInStock]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitsInStock]  DEFAULT ((0)) FOR [UnitsInStock]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Products_StarGivenMemberCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_StarGivenMemberCount]  DEFAULT ((0)) FOR [StarGivenMemberCount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Addresses_Members]') AND parent_object_id = OBJECT_ID(N'[dbo].[Addresses]'))
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Members] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Addresses_Members]') AND parent_object_id = OBJECT_ID(N'[dbo].[Addresses]'))
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Members]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comments_Members]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comments]'))
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Members] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comments_Members]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comments]'))
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Members]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comments_Products]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comments]'))
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comments_Products]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comments]'))
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MessageReplies_Members]') AND parent_object_id = OBJECT_ID(N'[dbo].[MessageReplies]'))
ALTER TABLE [dbo].[MessageReplies]  WITH CHECK ADD  CONSTRAINT [FK_MessageReplies_Members] FOREIGN KEY([Member_From_Id])
REFERENCES [dbo].[Members] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MessageReplies_Members]') AND parent_object_id = OBJECT_ID(N'[dbo].[MessageReplies]'))
ALTER TABLE [dbo].[MessageReplies] CHECK CONSTRAINT [FK_MessageReplies_Members]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MessageReplies_Members1]') AND parent_object_id = OBJECT_ID(N'[dbo].[MessageReplies]'))
ALTER TABLE [dbo].[MessageReplies]  WITH CHECK ADD  CONSTRAINT [FK_MessageReplies_Members1] FOREIGN KEY([Member_To_Id])
REFERENCES [dbo].[Members] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MessageReplies_Members1]') AND parent_object_id = OBJECT_ID(N'[dbo].[MessageReplies]'))
ALTER TABLE [dbo].[MessageReplies] CHECK CONSTRAINT [FK_MessageReplies_Members1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MessageReplies_Messages]') AND parent_object_id = OBJECT_ID(N'[dbo].[MessageReplies]'))
ALTER TABLE [dbo].[MessageReplies]  WITH CHECK ADD  CONSTRAINT [FK_MessageReplies_Messages] FOREIGN KEY([Message_Id])
REFERENCES [dbo].[Messages] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MessageReplies_Messages]') AND parent_object_id = OBJECT_ID(N'[dbo].[MessageReplies]'))
ALTER TABLE [dbo].[MessageReplies] CHECK CONSTRAINT [FK_MessageReplies_Messages]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Messages_Members]') AND parent_object_id = OBJECT_ID(N'[dbo].[Messages]'))
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Members] FOREIGN KEY([Member_From_Id])
REFERENCES [dbo].[Members] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Messages_Members]') AND parent_object_id = OBJECT_ID(N'[dbo].[Messages]'))
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Members]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Messages_Members1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Messages]'))
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Members1] FOREIGN KEY([Member_To_Id])
REFERENCES [dbo].[Members] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Messages_Members1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Messages]'))
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Members1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Messages_Messages]') AND parent_object_id = OBJECT_ID(N'[dbo].[Messages]'))
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Messages] FOREIGN KEY([Parent_Message_Id])
REFERENCES [dbo].[Messages] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Messages_Messages]') AND parent_object_id = OBJECT_ID(N'[dbo].[Messages]'))
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Messages]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetails_Orders]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetails_Orders]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetails_Products]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetails_Products]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Addresses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Addresses] FOREIGN KEY([Address_Id])
REFERENCES [dbo].[Addresses] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Addresses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Addresses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Members]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Members] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Members] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Members]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Members]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Categories] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
USE [master]
GO
ALTER DATABASE [UdemyETicaretDB] SET  READ_WRITE 
GO
