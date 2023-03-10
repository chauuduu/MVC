USE [master]
GO
/****** Object:  Database [MvcDemo]    Script Date: 28/02/2023 4:15:50 CH ******/
CREATE DATABASE [MvcDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MvcDemo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MvcDemo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MvcDemo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MvcDemo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MvcDemo] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MvcDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MvcDemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MvcDemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MvcDemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MvcDemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MvcDemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [MvcDemo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MvcDemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MvcDemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MvcDemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MvcDemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MvcDemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MvcDemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MvcDemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MvcDemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MvcDemo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MvcDemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MvcDemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MvcDemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MvcDemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MvcDemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MvcDemo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MvcDemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MvcDemo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MvcDemo] SET  MULTI_USER 
GO
ALTER DATABASE [MvcDemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MvcDemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MvcDemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MvcDemo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MvcDemo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MvcDemo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MvcDemo] SET QUERY_STORE = ON
GO
ALTER DATABASE [MvcDemo] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MvcDemo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28/02/2023 4:15:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 28/02/2023 4:15:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 28/02/2023 4:15:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 28/02/2023 4:15:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 28/02/2023 4:15:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 28/02/2023 4:15:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 28/02/2023 4:15:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Age] [int] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 28/02/2023 4:15:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clothes]    Script Date: 28/02/2023 4:15:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clothes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Size] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[RentalTime] [int] NULL,
	[RentalPrice] [int] NULL,
	[TypeClothesId] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Clothes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 28/02/2023 4:15:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Discription] [nvarchar](max) NULL,
	[Content] [text] NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeClothes]    Script Date: 28/02/2023 4:15:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeClothes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Limit] [int] NULL,
 CONSTRAINT [PK_TypeClothes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230217135656_Init', N'5.0.13')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7285ed72-706a-460d-a6a8-6e08a2ace3a8', N'USER', N'USER', N'10ef9e7f-a88d-4cc8-8bcc-761807c6c6c5')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2242c046-ca4f-40be-978f-f99492664aae', N'7285ed72-706a-460d-a6a8-6e08a2ace3a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b77462b4-4b09-42dd-8adb-c569d639b5a3', N'7285ed72-706a-460d-a6a8-6e08a2ace3a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ee9d9380-08a9-4a82-9b6b-1c363ec149aa', N'7285ed72-706a-460d-a6a8-6e08a2ace3a8')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Age], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2242c046-ca4f-40be-978f-f99492664aae', N'He Nho', 0, N'test22@gmail.com', N'TEST22@GMAIL.COM', NULL, NULL, 1, N'AQAAAAEAACcQAAAAENGBzKrVDQCjpLTgrJrFydDY6uhLJ4t/9H65p+X60gmXGf873gY6wCT9pZWRa9G2Zg==', N'M53XHRA35T75JU2M67L3SIVDYOSKY2PX', N'1a8df815-4aab-4b4f-8584-db7a510a4ef4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Age], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b77462b4-4b09-42dd-8adb-c569d639b5a3', N'Chau Du', 0, N'test@gmail.com', N'TEST@GMAIL.COM', NULL, NULL, 1, N'AQAAAAEAACcQAAAAEGbxiyFSh8s51Oo5cjqkiq3yCsjxduoDw+3TKr/Nda+Rq0f/6vyH3BfjxplwUE8/rg==', N'XJ7E4EC4CMXHY3BQHWYAJVWLHW2HVFTG', N'a72c6521-1660-4480-9c1f-0cdd2b19f5b8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Age], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ee9d9380-08a9-4a82-9b6b-1c363ec149aa', N'Nguyen Hue', 0, N'test05@gmail.com', N'TEST05@GMAIL.COM', NULL, NULL, 1, N'AQAAAAEAACcQAAAAEHDywHkFmC/AeS0PZG+gL1pKxKwc86ChW0b2DZnYXC+SQFs75kxIwFtupPL2DhXCYQ==', N'ER2CVPWKPYUB5KIOXXBEFQUFHZAGZCG6', N'1acc2942-d86b-4e22-9d59-09b101545539', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Clothes] ON 

INSERT [dbo].[Clothes] ([Id], [Name], [Description], [Size], [Price], [RentalTime], [RentalPrice], [TypeClothesId], [Status]) VALUES (1, N'Đầm hoa', N'đẹp', 1, CAST(500000 AS Decimal(18, 0)), 0, 100000, 2, 0)
INSERT [dbo].[Clothes] ([Id], [Name], [Description], [Size], [Price], [RentalTime], [RentalPrice], [TypeClothesId], [Status]) VALUES (2, N'Quần tây', N'Nam tính lắm', 2, CAST(325000 AS Decimal(18, 0)), 0, 32000, 1, 0)
SET IDENTITY_INSERT [dbo].[Clothes] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeClothes] ON 

INSERT [dbo].[TypeClothes] ([Id], [Name], [Limit]) VALUES (1, N'Quần', 15)
INSERT [dbo].[TypeClothes] ([Id], [Name], [Limit]) VALUES (2, N'Dress', 10)
INSERT [dbo].[TypeClothes] ([Id], [Name], [Limit]) VALUES (3, N'Shirt', 15)
INSERT [dbo].[TypeClothes] ([Id], [Name], [Limit]) VALUES (4, N'Skirt', 15)
INSERT [dbo].[TypeClothes] ([Id], [Name], [Limit]) VALUES (7, N'Dép', 30)
SET IDENTITY_INSERT [dbo].[TypeClothes] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 28/02/2023 4:15:51 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 28/02/2023 4:15:51 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 28/02/2023 4:15:51 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 28/02/2023 4:15:51 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 28/02/2023 4:15:51 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 28/02/2023 4:15:51 CH ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 28/02/2023 4:15:51 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[huecit_sp_FindAllBlog]    Script Date: 28/02/2023 4:15:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[huecit_sp_FindAllBlog]
as
select * from blogs
GO
/****** Object:  StoredProcedure [dbo].[mgi_sp_FindAllBlog]    Script Date: 28/02/2023 4:15:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mgi_sp_FindAllBlog]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select * from blogs
END
GO
/****** Object:  StoredProcedure [dbo].[mgi_sp_FindAllStudent]    Script Date: 28/02/2023 4:15:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mgi_sp_FindAllStudent]
as
select * from student
GO
/****** Object:  StoredProcedure [dbo].[SP_GETALLSTUDENT]    Script Date: 28/02/2023 4:15:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GETALLSTUDENT] 
as
select * from person
GO
/****** Object:  StoredProcedure [dbo].[SP_GetStudentById]    Script Date: 28/02/2023 4:15:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetStudentById] @id int
as
select * from person where id=@id
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertStudent]    Script Date: 28/02/2023 4:15:51 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_InsertStudent] @name nvarchar(100),@age int
as 
insert into person(name,age) values (@name,@age)
GO
USE [master]
GO
ALTER DATABASE [MvcDemo] SET  READ_WRITE 
GO
