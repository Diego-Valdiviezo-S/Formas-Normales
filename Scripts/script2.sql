USE [master]
GO
/****** Object:  Database [Normalizacion2]    Script Date: 7/22/2022 12:20:27 PM ******/
CREATE DATABASE [Normalizacion2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Normalizacion2', FILENAME = N'/var/opt/mssql/data/Normalizacion2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Normalizacion2_log', FILENAME = N'/var/opt/mssql/data/Normalizacion2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Normalizacion2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Normalizacion2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Normalizacion2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Normalizacion2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Normalizacion2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Normalizacion2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Normalizacion2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Normalizacion2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Normalizacion2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Normalizacion2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Normalizacion2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Normalizacion2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Normalizacion2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Normalizacion2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Normalizacion2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Normalizacion2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Normalizacion2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Normalizacion2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Normalizacion2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Normalizacion2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Normalizacion2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Normalizacion2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Normalizacion2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Normalizacion2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Normalizacion2] SET RECOVERY FULL 
GO
ALTER DATABASE [Normalizacion2] SET  MULTI_USER 
GO
ALTER DATABASE [Normalizacion2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Normalizacion2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Normalizacion2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Normalizacion2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Normalizacion2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Normalizacion2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Normalizacion2', N'ON'
GO
ALTER DATABASE [Normalizacion2] SET QUERY_STORE = OFF
GO
USE [Normalizacion2]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 7/22/2022 12:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo](
	[Num_Art] [int] NOT NULL,
	[Nom_art] [varchar](50) NOT NULL,
	[Precio] [money] NOT NULL,
 CONSTRAINT [PK_Articulo] PRIMARY KEY CLUSTERED 
(
	[Num_Art] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 7/22/2022 12:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ClienteId] [int] NOT NULL,
	[Nom_Cliente] [varchar](50) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orden]    Script Date: 7/22/2022 12:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orden](
	[Id_orden] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Cant] [int] NOT NULL,
 CONSTRAINT [PK_Orden] PRIMARY KEY CLUSTERED 
(
	[Id_orden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Principal]    Script Date: 7/22/2022 12:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Principal](
	[Id] [int] NOT NULL,
	[Cliente] [int] NULL,
	[Articulo] [int] NULL,
	[Orden] [int] NULL,
 CONSTRAINT [PK_Principal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Normalizacion2] SET  READ_WRITE 
GO
