USE [master]
GO
/****** Object:  Database [ischool_dt]    Script Date: 10/05/38 09:10:27 م ******/
CREATE DATABASE [ischool_dt]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ischool_dt', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\ischool_dt.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ischool_dt_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\ischool_dt_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ischool_dt] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ischool_dt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ischool_dt] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ischool_dt] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ischool_dt] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ischool_dt] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ischool_dt] SET ARITHABORT OFF 
GO
ALTER DATABASE [ischool_dt] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ischool_dt] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ischool_dt] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ischool_dt] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ischool_dt] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ischool_dt] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ischool_dt] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ischool_dt] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ischool_dt] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ischool_dt] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ischool_dt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ischool_dt] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ischool_dt] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ischool_dt] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ischool_dt] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ischool_dt] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ischool_dt] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ischool_dt] SET RECOVERY FULL 
GO
ALTER DATABASE [ischool_dt] SET  MULTI_USER 
GO
ALTER DATABASE [ischool_dt] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ischool_dt] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ischool_dt] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ischool_dt] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ischool_dt] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ischool_dt', N'ON'
GO
ALTER DATABASE [ischool_dt] SET QUERY_STORE = OFF
GO
USE [ischool_dt]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ischool_dt]
GO
/****** Object:  Table [dbo].[isch_Absences]    Script Date: 10/05/38 09:10:27 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[isch_Absences](
	[a_id] [int] IDENTITY(1,1) NOT NULL,
	[a_Student] [int] NOT NULL,
	[a_Type] [int] NOT NULL,
	[a_Date] [date] NOT NULL,
	[a_Excuse] [int] NULL,
	[a_Subject] [int] NOT NULL,
 CONSTRAINT [PK_isch_Absences] PRIMARY KEY CLUSTERED 
(
	[a_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[isch_AbsenceTypes]    Script Date: 10/05/38 09:10:27 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[isch_AbsenceTypes](
	[at_id] [int] IDENTITY(1,1) NOT NULL,
	[at_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_isch_AbsenceTypes] PRIMARY KEY CLUSTERED 
(
	[at_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[isch_Excuses]    Script Date: 10/05/38 09:10:27 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[isch_Excuses](
	[e_id] [int] IDENTITY(1,1) NOT NULL,
	[e_User] [int] NOT NULL,
	[e_Text] [nvarchar](300) NOT NULL,
	[e_EnterDate] [date] NOT NULL,
 CONSTRAINT [PK_isch_Excuses] PRIMARY KEY CLUSTERED 
(
	[e_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[isch_NotiFication]    Script Date: 10/05/38 09:10:27 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[isch_NotiFication](
	[n_id] [int] IDENTITY(1,1) NOT NULL,
	[n_title] [nvarchar](150) NOT NULL,
	[n_text] [nvarchar](500) NOT NULL,
	[n_EnterByUser] [int] NOT NULL,
	[n_ToUser] [int] NOT NULL,
	[n_EnterDate] [date] NOT NULL,
 CONSTRAINT [PK_isch_NotiFication] PRIMARY KEY CLUSTERED 
(
	[n_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[isch_Permissions]    Script Date: 10/05/38 09:10:27 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[isch_Permissions](
	[p_id] [int] IDENTITY(1,1) NOT NULL,
	[p_Name] [nvarchar](200) NOT NULL,
	[p_IsAdmin] [bit] NOT NULL,
	[p_IsTeacher] [bit] NOT NULL,
 CONSTRAINT [PK_permissions] PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[isch_Schedules]    Script Date: 10/05/38 09:10:27 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[isch_Schedules](
	[s_id] [int] IDENTITY(1,1) NOT NULL,
	[s_Subject1] [int] NULL,
	[s_Subject2] [int] NULL,
	[s_Subject3] [int] NULL,
	[s_Subject4] [int] NULL,
	[s_Subject5] [int] NULL,
	[s_Subject6] [int] NULL,
	[s_Subject7] [int] NULL,
	[s_Subject8] [int] NULL,
 CONSTRAINT [PK_isch_Schedules] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[isch_Students]    Script Date: 10/05/38 09:10:27 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[isch_Students](
	[st_id] [int] IDENTITY(1,1) NOT NULL,
	[st_acc] [int] NOT NULL,
	[st_Name] [nvarchar](300) NOT NULL,
	[st_Specialization] [nvarchar](100) NOT NULL,
	[st_Nationality] [nvarchar](100) NOT NULL,
	[st_NationalId] [nvarchar](100) NOT NULL,
	[st_EnterTime] [nvarchar](100) NOT NULL,
	[st_PhoneNumber] [nvarchar](100) NULL,
	[st_AcademyUser] [nvarchar](200) NOT NULL,
	[st_Schedule] [int] NULL,
 CONSTRAINT [PK_students] PRIMARY KEY CLUSTERED 
(
	[st_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[isch_Subjects]    Script Date: 10/05/38 09:10:27 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[isch_Subjects](
	[sub_id] [int] IDENTITY(1,1) NOT NULL,
	[sub_Teacher] [int] NOT NULL,
	[sub_Type] [nvarchar](150) NOT NULL,
	[sub_Class] [nvarchar](150) NOT NULL,
	[sub_Place] [nvarchar](100) NOT NULL,
	[sub_Structure] [xml] NULL,
 CONSTRAINT [PK_isch_Subjects] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[isch_Users]    Script Date: 10/05/38 09:10:27 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[isch_Users](
	[u_id] [int] IDENTITY(1,1) NOT NULL,
	[u_Name] [nvarchar](200) NOT NULL,
	[u_RealyName] [nvarchar](300) NOT NULL,
	[u_Pass] [nvarchar](200) NOT NULL,
	[u_Permission] [int] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UniquePName]    Script Date: 10/05/38 09:10:27 م ******/
CREATE UNIQUE NONCLUSTERED INDEX [UniquePName] ON [dbo].[isch_Permissions]
(
	[p_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UniqueFiled]    Script Date: 10/05/38 09:10:27 م ******/
CREATE UNIQUE NONCLUSTERED INDEX [UniqueFiled] ON [dbo].[isch_Students]
(
	[st_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UniqueName]    Script Date: 10/05/38 09:10:27 م ******/
CREATE UNIQUE NONCLUSTERED INDEX [UniqueName] ON [dbo].[isch_Users]
(
	[u_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[isch_Absences]  WITH CHECK ADD  CONSTRAINT [FK_isch_Absences_isch_AbsenceTypes] FOREIGN KEY([a_Type])
REFERENCES [dbo].[isch_AbsenceTypes] ([at_id])
GO
ALTER TABLE [dbo].[isch_Absences] CHECK CONSTRAINT [FK_isch_Absences_isch_AbsenceTypes]
GO
ALTER TABLE [dbo].[isch_Absences]  WITH CHECK ADD  CONSTRAINT [FK_isch_Absences_isch_Excuses] FOREIGN KEY([a_Subject])
REFERENCES [dbo].[isch_Excuses] ([e_id])
GO
ALTER TABLE [dbo].[isch_Absences] CHECK CONSTRAINT [FK_isch_Absences_isch_Excuses]
GO
ALTER TABLE [dbo].[isch_Absences]  WITH CHECK ADD  CONSTRAINT [FK_isch_Absences_isch_Students1] FOREIGN KEY([a_Student])
REFERENCES [dbo].[isch_Students] ([st_id])
GO
ALTER TABLE [dbo].[isch_Absences] CHECK CONSTRAINT [FK_isch_Absences_isch_Students1]
GO
ALTER TABLE [dbo].[isch_Absences]  WITH CHECK ADD  CONSTRAINT [FK_isch_Absences_isch_Subjects] FOREIGN KEY([a_Subject])
REFERENCES [dbo].[isch_Subjects] ([sub_id])
GO
ALTER TABLE [dbo].[isch_Absences] CHECK CONSTRAINT [FK_isch_Absences_isch_Subjects]
GO
ALTER TABLE [dbo].[isch_Excuses]  WITH CHECK ADD  CONSTRAINT [FK_isch_Excuses_isch_Users] FOREIGN KEY([e_User])
REFERENCES [dbo].[isch_Users] ([u_id])
GO
ALTER TABLE [dbo].[isch_Excuses] CHECK CONSTRAINT [FK_isch_Excuses_isch_Users]
GO
ALTER TABLE [dbo].[isch_NotiFication]  WITH CHECK ADD  CONSTRAINT [FK_isch_NotiFication_isch_Users] FOREIGN KEY([n_EnterByUser])
REFERENCES [dbo].[isch_Users] ([u_id])
GO
ALTER TABLE [dbo].[isch_NotiFication] CHECK CONSTRAINT [FK_isch_NotiFication_isch_Users]
GO
ALTER TABLE [dbo].[isch_NotiFication]  WITH CHECK ADD  CONSTRAINT [FK_isch_NotiFication_isch_Users1] FOREIGN KEY([n_ToUser])
REFERENCES [dbo].[isch_Users] ([u_id])
GO
ALTER TABLE [dbo].[isch_NotiFication] CHECK CONSTRAINT [FK_isch_NotiFication_isch_Users1]
GO
ALTER TABLE [dbo].[isch_Schedules]  WITH CHECK ADD  CONSTRAINT [FK_isch_Schedules_isch_Subjects] FOREIGN KEY([s_Subject1])
REFERENCES [dbo].[isch_Subjects] ([sub_id])
GO
ALTER TABLE [dbo].[isch_Schedules] CHECK CONSTRAINT [FK_isch_Schedules_isch_Subjects]
GO
ALTER TABLE [dbo].[isch_Schedules]  WITH CHECK ADD  CONSTRAINT [FK_isch_Schedules_isch_Subjects1] FOREIGN KEY([s_Subject2])
REFERENCES [dbo].[isch_Subjects] ([sub_id])
GO
ALTER TABLE [dbo].[isch_Schedules] CHECK CONSTRAINT [FK_isch_Schedules_isch_Subjects1]
GO
ALTER TABLE [dbo].[isch_Schedules]  WITH CHECK ADD  CONSTRAINT [FK_isch_Schedules_isch_Subjects2] FOREIGN KEY([s_Subject3])
REFERENCES [dbo].[isch_Subjects] ([sub_id])
GO
ALTER TABLE [dbo].[isch_Schedules] CHECK CONSTRAINT [FK_isch_Schedules_isch_Subjects2]
GO
ALTER TABLE [dbo].[isch_Schedules]  WITH CHECK ADD  CONSTRAINT [FK_isch_Schedules_isch_Subjects3] FOREIGN KEY([s_Subject4])
REFERENCES [dbo].[isch_Subjects] ([sub_id])
GO
ALTER TABLE [dbo].[isch_Schedules] CHECK CONSTRAINT [FK_isch_Schedules_isch_Subjects3]
GO
ALTER TABLE [dbo].[isch_Schedules]  WITH CHECK ADD  CONSTRAINT [FK_isch_Schedules_isch_Subjects4] FOREIGN KEY([s_Subject5])
REFERENCES [dbo].[isch_Subjects] ([sub_id])
GO
ALTER TABLE [dbo].[isch_Schedules] CHECK CONSTRAINT [FK_isch_Schedules_isch_Subjects4]
GO
ALTER TABLE [dbo].[isch_Schedules]  WITH CHECK ADD  CONSTRAINT [FK_isch_Schedules_isch_Subjects5] FOREIGN KEY([s_Subject6])
REFERENCES [dbo].[isch_Subjects] ([sub_id])
GO
ALTER TABLE [dbo].[isch_Schedules] CHECK CONSTRAINT [FK_isch_Schedules_isch_Subjects5]
GO
ALTER TABLE [dbo].[isch_Schedules]  WITH CHECK ADD  CONSTRAINT [FK_isch_Schedules_isch_Subjects6] FOREIGN KEY([s_Subject7])
REFERENCES [dbo].[isch_Subjects] ([sub_id])
GO
ALTER TABLE [dbo].[isch_Schedules] CHECK CONSTRAINT [FK_isch_Schedules_isch_Subjects6]
GO
ALTER TABLE [dbo].[isch_Schedules]  WITH CHECK ADD  CONSTRAINT [FK_isch_Schedules_isch_Subjects7] FOREIGN KEY([s_Subject8])
REFERENCES [dbo].[isch_Subjects] ([sub_id])
GO
ALTER TABLE [dbo].[isch_Schedules] CHECK CONSTRAINT [FK_isch_Schedules_isch_Subjects7]
GO
ALTER TABLE [dbo].[isch_Students]  WITH CHECK ADD  CONSTRAINT [FK_isch_Students_isch_Schedules] FOREIGN KEY([st_Schedule])
REFERENCES [dbo].[isch_Schedules] ([s_id])
GO
ALTER TABLE [dbo].[isch_Students] CHECK CONSTRAINT [FK_isch_Students_isch_Schedules]
GO
ALTER TABLE [dbo].[isch_Subjects]  WITH CHECK ADD  CONSTRAINT [FK_isch_Subjects_isch_Users] FOREIGN KEY([sub_Teacher])
REFERENCES [dbo].[isch_Users] ([u_id])
GO
ALTER TABLE [dbo].[isch_Subjects] CHECK CONSTRAINT [FK_isch_Subjects_isch_Users]
GO
ALTER TABLE [dbo].[isch_Users]  WITH CHECK ADD  CONSTRAINT [FK_users_permissions] FOREIGN KEY([u_Permission])
REFERENCES [dbo].[isch_Permissions] ([p_id])
GO
ALTER TABLE [dbo].[isch_Users] CHECK CONSTRAINT [FK_users_permissions]
GO
USE [master]
GO
ALTER DATABASE [ischool_dt] SET  READ_WRITE 
GO
