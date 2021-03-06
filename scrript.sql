USE [master]
GO
/****** Object:  Database [StudentManagement]    Script Date: 8/10/2021 10:48:23 AM ******/
CREATE DATABASE [StudentManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentManagement', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\StudentManagement.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StudentManagement_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\StudentManagement_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [StudentManagement] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentManagement] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [StudentManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StudentManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudentManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StudentManagement] SET  MULTI_USER 
GO
ALTER DATABASE [StudentManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [StudentManagement]
GO
/****** Object:  Table [dbo].[Student_table]    Script Date: 8/10/2021 10:48:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student_table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](100) NOT NULL,
	[Address] [varchar](1000) NOT NULL,
	[AdmissionDate] [datetime] NOT NULL,
	[Class] [int] NOT NULL,
 CONSTRAINT [PK_Student table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentClass_table]    Script Date: 8/10/2021 10:48:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentClass_table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_StudentClass table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[GetAllStudentView]    Script Date: 8/10/2021 10:48:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GetAllStudentView]
as

Select s.Id AS Id,
s.StudentName,
s.Address,
s.AdmissionDate,
c.ClassName

FROM Student_table as s
INNER JOIN StudentClass_table as c on s.Class=c.Id
GO
SET IDENTITY_INSERT [dbo].[Student_table] ON 

INSERT [dbo].[Student_table] ([Id], [StudentName], [Address], [AdmissionDate], [Class]) VALUES (1, N'Ridita', N'Summerview cOLONY', CAST(0x0000AB3500000000 AS DateTime), 3)
INSERT [dbo].[Student_table] ([Id], [StudentName], [Address], [AdmissionDate], [Class]) VALUES (38, N'moni', N'ctg', CAST(0x0000AB3500000000 AS DateTime), 1)
INSERT [dbo].[Student_table] ([Id], [StudentName], [Address], [AdmissionDate], [Class]) VALUES (39, N'lubana', N'teknaf', CAST(0x0000AB3500000000 AS DateTime), 2)
INSERT [dbo].[Student_table] ([Id], [StudentName], [Address], [AdmissionDate], [Class]) VALUES (40, N'tasbir', N'coxs', CAST(0x0000AB3500000000 AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[Student_table] OFF
SET IDENTITY_INSERT [dbo].[StudentClass_table] ON 

INSERT [dbo].[StudentClass_table] ([Id], [ClassName]) VALUES (1, N'Class-6')
INSERT [dbo].[StudentClass_table] ([Id], [ClassName]) VALUES (2, N'Class-7')
INSERT [dbo].[StudentClass_table] ([Id], [ClassName]) VALUES (3, N'Class-8')
INSERT [dbo].[StudentClass_table] ([Id], [ClassName]) VALUES (4, N'Class-9')
INSERT [dbo].[StudentClass_table] ([Id], [ClassName]) VALUES (5, N'Class-10')
SET IDENTITY_INSERT [dbo].[StudentClass_table] OFF
ALTER TABLE [dbo].[Student_table]  WITH CHECK ADD  CONSTRAINT [FK_Student_table_StudentClass_table] FOREIGN KEY([Class])
REFERENCES [dbo].[StudentClass_table] ([Id])
GO
ALTER TABLE [dbo].[Student_table] CHECK CONSTRAINT [FK_Student_table_StudentClass_table]
GO
USE [master]
GO
ALTER DATABASE [StudentManagement] SET  READ_WRITE 
GO
