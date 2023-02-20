USE [master]
GO

/****** Object:  Database [db_icv1]    Script Date: 20.02.2023 9:10:56 ******/
DROP DATABASE [db_icv1]
GO

/****** Object:  Database [db_icv1]    Script Date: 20.02.2023 9:10:56 ******/
CREATE DATABASE [db_icv1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_icv1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\db_icv1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_icv1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\db_icv1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_icv1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [db_icv1] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [db_icv1] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [db_icv1] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [db_icv1] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [db_icv1] SET ARITHABORT OFF 
GO

ALTER DATABASE [db_icv1] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [db_icv1] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [db_icv1] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [db_icv1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [db_icv1] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [db_icv1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [db_icv1] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [db_icv1] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [db_icv1] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [db_icv1] SET  ENABLE_BROKER 
GO

ALTER DATABASE [db_icv1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [db_icv1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [db_icv1] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [db_icv1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [db_icv1] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [db_icv1] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [db_icv1] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [db_icv1] SET RECOVERY FULL 
GO

ALTER DATABASE [db_icv1] SET  MULTI_USER 
GO

ALTER DATABASE [db_icv1] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [db_icv1] SET DB_CHAINING OFF 
GO

ALTER DATABASE [db_icv1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [db_icv1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [db_icv1] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [db_icv1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [db_icv1] SET QUERY_STORE = ON
GO

ALTER DATABASE [db_icv1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [db_icv1] SET  READ_WRITE 
GO

