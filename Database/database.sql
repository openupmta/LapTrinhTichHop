USE [master]
GO
/****** Object:  Database [QuanLyGiaoVienDB_LTTH]    Script Date: 9/29/2020 10:41:27 PM ******/
CREATE DATABASE [QuanLyGiaoVienDB_LTTH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyGiaoVienDB_LTTH', FILENAME = N'E:\CƠ SỞ DỮ LIỆU\Project SQL\LT TICH HOP\QuanLyGiaoVienDB_LTTH.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyGiaoVienDB_LTTH_log', FILENAME = N'E:\CƠ SỞ DỮ LIỆU\Project SQL\LT TICH HOP\QuanLyGiaoVienDB_LTTH_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyGiaoVienDB_LTTH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuanLyGiaoVienDB_LTTH]
GO
/****** Object:  Table [dbo].[BaiBao]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiBao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](5) NULL,
	[Ten] [nvarchar](100) NULL,
	[TenTapChiCongBo] [nvarchar](150) NULL,
	[KiHoc] [int] NULL,
	[NamHoc] [varchar](10) NULL,
	[SoThanhVien] [int] NULL,
	[IdLoaiBaiBao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoMon]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoMon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](5) NULL,
	[Ten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeTai]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeTai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](5) NULL,
	[Ten] [nvarchar](200) NULL,
	[KiHoc] [int] NULL,
	[NamHoc] [varchar](10) NULL,
	[CoQuanQuanLy] [nvarchar](200) NULL,
	[SoThanhVien] [int] NULL,
	[IdLoaiDeTai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](5) NULL,
	[Ten] [nvarchar](40) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [varchar](12) NULL,
	[Email] [varchar](50) NULL,
	[IdBoMon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GV_BaiBao]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV_BaiBao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGiaoVien] [int] NULL,
	[IdBaiBao] [int] NULL,
	[SoGio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GV_ChamThi]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV_ChamThi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGiaoVien] [int] NULL,
	[IdLoaiChamThi] [int] NULL,
	[SoLuong] [int] NULL,
	[NamHoc] [varchar](10) NULL,
	[KiHoc] [int] NULL,
	[SoGio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GV_DeTai]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV_DeTai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGiaoVien] [int] NULL,
	[IdDeTai] [int] NULL,
	[LaChuTri] [int] NULL,
	[SoGio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GV_HoiDong]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV_HoiDong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGiaoVien] [int] NULL,
	[IdHoiDong] [int] NULL,
	[VaiTro] [nvarchar](20) NULL,
	[NamHoc] [varchar](10) NULL,
	[KiHoc] [int] NULL,
	[Solan] [int] NULL,
	[SoGio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GV_HuongDan]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV_HuongDan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGiaoVien] [int] NULL,
	[IdLoaiHuongDan] [int] NULL,
	[IdHocVien] [int] NULL,
	[TenDeTai] [nvarchar](50) NULL,
	[KiHoc] [int] NULL,
	[NamHoc] [varchar](10) NULL,
	[BaoVeThanhCong] [bit] NULL,
	[SoGio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GV_LopHocPhan]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV_LopHocPhan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGiaoVien] [int] NULL,
	[IdLopHocPhan] [int] NULL,
	[SoTiet] [int] NULL,
	[SoGio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GV_Sach]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV_Sach](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGiaoVien] [int] NULL,
	[IdSach] [int] NULL,
	[SoTrangDaViet] [int] NULL,
	[SoGio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[He]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[He](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocPhan]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocPhan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](5) NULL,
	[Ten] [nvarchar](100) NULL,
	[SoTinChi] [int] NULL,
	[IdDoiTuongHoc] [int] NULL,
	[IdLoaiDayHoc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocVien]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocVien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](5) NULL,
	[Ten] [nvarchar](40) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[Diachi] [nvarchar](100) NULL,
	[IdLop] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoiDong]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoiDong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[GhiChu] [ntext] NULL,
	[IdLoaiHoiDong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiBaiBao]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiBaiBao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](300) NULL,
	[DonViTinh] [int] NULL,
	[GioChuan] [int] NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiChamThi]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiChamThi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](200) NULL,
	[DonViTinh] [int] NULL,
	[GioChuan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDayHoc]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDayHoc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](200) NULL,
	[GioChuan] [int] NULL,
	[DonViTinh] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDeTai]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDeTai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](200) NULL,
	[DonViTinh] [int] NULL,
	[GioChuan] [int] NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHoiDong]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHoiDong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHuongDan]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHuongDan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](200) NULL,
	[DonViTinh] [int] NULL,
	[GioChuan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSach]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSach](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](200) NULL,
	[DonViTinh] [int] NULL,
	[GioChuan] [int] NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](5) NULL,
	[Te] [nvarchar](50) NULL,
	[SiSo] [int] NULL,
	[IdHe] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHocPhan]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHocPhan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](5) NULL,
	[SiSo] [int] NULL,
	[KiHoc] [int] NULL,
	[NamHoc] [varchar](10) NULL,
	[IdHocPhan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLy]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLy](
	[Id] [int] NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[HinhAnh] [varchar](250) NULL,
	[HoVaTen] [nvarchar](50) NULL,
	[GioiTinh] [tinyint] NULL,
	[NgayTao] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 9/29/2020 10:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [varchar](5) NULL,
	[Ten] [nvarchar](100) NULL,
	[NoiXuatBan] [nvarchar](100) NULL,
	[KiHoc] [int] NULL,
	[NamHoc] [varchar](10) NULL,
	[SoThanhVien] [int] NULL,
	[IdLoaiSach] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BaiBao] ADD  DEFAULT ((0)) FOR [SoThanhVien]
GO
ALTER TABLE [dbo].[DeTai] ADD  DEFAULT ((0)) FOR [SoThanhVien]
GO
ALTER TABLE [dbo].[GV_BaiBao] ADD  DEFAULT ((0)) FOR [SoGio]
GO
ALTER TABLE [dbo].[GV_ChamThi] ADD  DEFAULT ((0)) FOR [SoGio]
GO
ALTER TABLE [dbo].[GV_DeTai] ADD  DEFAULT ((0)) FOR [LaChuTri]
GO
ALTER TABLE [dbo].[GV_DeTai] ADD  DEFAULT ((0)) FOR [SoGio]
GO
ALTER TABLE [dbo].[GV_HuongDan] ADD  DEFAULT ((0)) FOR [SoGio]
GO
ALTER TABLE [dbo].[GV_LopHocPhan] ADD  DEFAULT ((0)) FOR [SoGio]
GO
ALTER TABLE [dbo].[GV_Sach] ADD  DEFAULT ((0)) FOR [SoTrangDaViet]
GO
ALTER TABLE [dbo].[GV_Sach] ADD  DEFAULT ((0)) FOR [SoGio]
GO
ALTER TABLE [dbo].[Sach] ADD  DEFAULT ((0)) FOR [SoThanhVien]
GO
ALTER TABLE [dbo].[BaiBao]  WITH CHECK ADD FOREIGN KEY([IdLoaiBaiBao])
REFERENCES [dbo].[LoaiBaiBao] ([Id])
GO
ALTER TABLE [dbo].[DeTai]  WITH CHECK ADD FOREIGN KEY([IdLoaiDeTai])
REFERENCES [dbo].[LoaiDeTai] ([Id])
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD FOREIGN KEY([IdBoMon])
REFERENCES [dbo].[BoMon] ([Id])
GO
ALTER TABLE [dbo].[GV_BaiBao]  WITH CHECK ADD FOREIGN KEY([IdBaiBao])
REFERENCES [dbo].[BaiBao] ([Id])
GO
ALTER TABLE [dbo].[GV_BaiBao]  WITH CHECK ADD FOREIGN KEY([IdGiaoVien])
REFERENCES [dbo].[GiaoVien] ([Id])
GO
ALTER TABLE [dbo].[GV_ChamThi]  WITH CHECK ADD FOREIGN KEY([IdGiaoVien])
REFERENCES [dbo].[GiaoVien] ([Id])
GO
ALTER TABLE [dbo].[GV_ChamThi]  WITH CHECK ADD FOREIGN KEY([IdLoaiChamThi])
REFERENCES [dbo].[LoaiChamThi] ([Id])
GO
ALTER TABLE [dbo].[GV_DeTai]  WITH CHECK ADD FOREIGN KEY([IdDeTai])
REFERENCES [dbo].[DeTai] ([Id])
GO
ALTER TABLE [dbo].[GV_DeTai]  WITH CHECK ADD FOREIGN KEY([IdGiaoVien])
REFERENCES [dbo].[GiaoVien] ([Id])
GO
ALTER TABLE [dbo].[GV_HoiDong]  WITH CHECK ADD FOREIGN KEY([IdGiaoVien])
REFERENCES [dbo].[GiaoVien] ([Id])
GO
ALTER TABLE [dbo].[GV_HoiDong]  WITH CHECK ADD FOREIGN KEY([IdHoiDong])
REFERENCES [dbo].[HoiDong] ([Id])
GO
ALTER TABLE [dbo].[GV_HuongDan]  WITH CHECK ADD FOREIGN KEY([IdGiaoVien])
REFERENCES [dbo].[GiaoVien] ([Id])
GO
ALTER TABLE [dbo].[GV_HuongDan]  WITH CHECK ADD FOREIGN KEY([IdHocVien])
REFERENCES [dbo].[HocVien] ([Id])
GO
ALTER TABLE [dbo].[GV_HuongDan]  WITH CHECK ADD FOREIGN KEY([IdLoaiHuongDan])
REFERENCES [dbo].[LoaiHuongDan] ([Id])
GO
ALTER TABLE [dbo].[GV_LopHocPhan]  WITH CHECK ADD FOREIGN KEY([IdGiaoVien])
REFERENCES [dbo].[GiaoVien] ([Id])
GO
ALTER TABLE [dbo].[GV_LopHocPhan]  WITH CHECK ADD FOREIGN KEY([IdLopHocPhan])
REFERENCES [dbo].[LopHocPhan] ([Id])
GO
ALTER TABLE [dbo].[GV_Sach]  WITH CHECK ADD FOREIGN KEY([IdGiaoVien])
REFERENCES [dbo].[GiaoVien] ([Id])
GO
ALTER TABLE [dbo].[GV_Sach]  WITH CHECK ADD FOREIGN KEY([IdSach])
REFERENCES [dbo].[Sach] ([Id])
GO
ALTER TABLE [dbo].[HocPhan]  WITH CHECK ADD FOREIGN KEY([IdDoiTuongHoc])
REFERENCES [dbo].[He] ([Id])
GO
ALTER TABLE [dbo].[HocPhan]  WITH CHECK ADD FOREIGN KEY([IdLoaiDayHoc])
REFERENCES [dbo].[LoaiDayHoc] ([Id])
GO
ALTER TABLE [dbo].[HocVien]  WITH CHECK ADD FOREIGN KEY([IdLop])
REFERENCES [dbo].[Lop] ([Id])
GO
ALTER TABLE [dbo].[HoiDong]  WITH CHECK ADD FOREIGN KEY([IdLoaiHoiDong])
REFERENCES [dbo].[LoaiHoiDong] ([Id])
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([IdHe])
REFERENCES [dbo].[He] ([Id])
GO
ALTER TABLE [dbo].[LopHocPhan]  WITH CHECK ADD FOREIGN KEY([IdHocPhan])
REFERENCES [dbo].[HocPhan] ([Id])
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD FOREIGN KEY([IdLoaiSach])
REFERENCES [dbo].[LoaiSach] ([Id])
GO
ALTER TABLE [dbo].[GV_DeTai]  WITH CHECK ADD CHECK  (((0)<=[LaChuTri] AND [LaChuTri]<=(1)))
GO
ALTER TABLE [dbo].[LoaiBaiBao]  WITH CHECK ADD CHECK  (([DonViTinh]<>(0)))
GO
ALTER TABLE [dbo].[LoaiChamThi]  WITH CHECK ADD CHECK  (([DonViTinh]<>(0)))
GO
ALTER TABLE [dbo].[LoaiDayHoc]  WITH CHECK ADD CHECK  (([DonViTinh]<>(0)))
GO
ALTER TABLE [dbo].[LoaiDeTai]  WITH CHECK ADD CHECK  (([DonViTinh]<>(0)))
GO
ALTER TABLE [dbo].[LoaiHuongDan]  WITH CHECK ADD CHECK  (([DonViTinh]<>(0)))
GO
ALTER TABLE [dbo].[LoaiSach]  WITH CHECK ADD CHECK  (([DonViTinh]<>(0)))
GO
USE [master]
GO
ALTER DATABASE [QuanLyGiaoVienDB_LTTH] SET  READ_WRITE 
GO
