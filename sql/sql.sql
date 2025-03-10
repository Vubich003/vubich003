USE [master]
GO
/****** Object:  Database [QuanLyBanHang]    Script Date: 6/14/2022 11:13:40 AM ******/
CREATE DATABASE [QuanLyBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyBanHang] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyBanHang] SET QUERY_STORE = OFF
GO
USE [QuanLyBanHang]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 6/14/2022 11:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] IDENTITY(1,1) NOT NULL,
	[NoidungBL] [nvarchar](max) NULL,
	[MaThanhVien] [int] NULL,
	[MaSP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 6/14/2022 11:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaChiTietDDh] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[TenSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDDh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 6/14/2022 11:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaChiTietPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[DonGiaNhap] [decimal](18, 0) NULL,
	[SoLuongNhap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 6/14/2022 11:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[MaKH] [int] NULL,
	[UuDai] [int] NULL,
	[DaHuy] [bit] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/14/2022 11:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](150) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](250) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[MaThanhVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 6/14/2022 11:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](150) NULL,
	[Icon] [nvarchar](max) NULL,
	[BiDanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 6/14/2022 11:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[UuDai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien_Quyen]    Script Date: 6/14/2022 11:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien_Quyen](
	[MaLoaiTV] [int] NOT NULL,
	[MaQuyen] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiThanhVien_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC,
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 6/14/2022 11:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](150) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](250) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[Fax] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 6/14/2022 11:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
	[ThongTin] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 6/14/2022 11:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 6/14/2022 11:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [nvarchar](50) NOT NULL,
	[TenQuyen] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/14/2022 11:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](250) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[NgayCapNhat] [datetime] NULL,
	[Gioithieu] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[LuotXem] [int] NULL,
	[LuotBinhChon] [int] NULL,
	[LuotBinhLuan] [int] NULL,
	[SoLuotMua] [int] NULL,
	[Moi] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[DaXoa] [bit] NULL,
	[HinhAnh1] [nvarchar](max) NULL,
	[HinhAnh2] [nvarchar](max) NULL,
	[HinhAnh3] [nvarchar](max) NULL,
	[HinhAnh4] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 6/14/2022 11:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](150) NULL,
	[MatKhau] [nvarchar](150) NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[SoDienThoai] [varchar](50) NULL,
	[CauHoi] [nvarchar](max) NULL,
	[CauTraLoi] [nvarchar](max) NULL,
	[MaLoaiTV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] ON 

INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (1, 1, 1, N'Alienware M15 R1', 2, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (2, 1, 2, N'Alienware M15 R2', 1, CAST(40000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (3, 2, 1, N'Alienware M15 R1', 1, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (4, 2, 2, N'Alienware M15 R2', 2, CAST(40000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (5, 4, 1, N'Alienware M15 R1', 2, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (6, 4, 2, N'Alienware M15 R2', 1, CAST(40000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (7, 5, 30, N'Dell Business Multimedia Keyboard - KB522', 1, CAST(700000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (8, 5, 31, N'Dell Keyboard - Smartcard USB', 2, CAST(900000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (9, 6, 20, N'Alienware AURORA RYZEN™ EDITION R10 GAMING', 1, CAST(24000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (10, 6, 21, N'Alienware Aurora R12 Gaming Desktop', 1, CAST(26000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (11, 7, 1, N'Alienware M15 R1', 1, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (12, 9, 1, N'Alienware M15 R1', 1, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (13, 10, 1, N'Alienware M15 R1', 2, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (14, 11, 1, N'Alienware M15 R1', 3, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (15, 12, 1, N'Alienware M15 R1', 2, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (16, 12, 2, N'Alienware M15 R2', 1, CAST(40000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (17, 12, 7, N'Dell XPS 13 9310 (2021)', 1, CAST(27000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (18, 12, 56, N'Alienware 27 Gaming Monitor - AW2720HF', 1, CAST(9000000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] ON 

INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 7, 1, CAST(20000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 8, 1, CAST(20000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (5, 8, 2, CAST(25000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (6, 8, 5, CAST(30000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (7, 9, 1, CAST(20000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (8, 10, 2, CAST(25000000 AS Decimal(18, 0)), 12)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (9, 11, 1, CAST(35000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (10, 12, 1, CAST(35000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (11, 13, 4, CAST(50000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (12, 14, 2, CAST(34000000 AS Decimal(18, 0)), 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (13, 15, 3, CAST(30000000 AS Decimal(18, 0)), 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (14, 16, 5, CAST(27000000 AS Decimal(18, 0)), 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (15, 17, 6, CAST(27000000 AS Decimal(18, 0)), 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (16, 18, 7, CAST(34000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (17, 19, 8, CAST(27000000 AS Decimal(18, 0)), 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (18, 20, 9, CAST(34000000 AS Decimal(18, 0)), 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (19, 21, 10, CAST(30000000 AS Decimal(18, 0)), 5)
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (1, CAST(N'2021-04-11T23:22:38.417' AS DateTime), 0, NULL, 0, 10, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (2, CAST(N'2021-04-12T14:07:58.713' AS DateTime), 0, NULL, 0, 10, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (3, CAST(N'2021-04-12T14:08:20.460' AS DateTime), 0, NULL, 0, 10, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (4, CAST(N'2021-04-12T14:08:27.353' AS DateTime), 0, NULL, 1, 10, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (5, CAST(N'2021-04-15T17:48:18.297' AS DateTime), 0, NULL, 1, 10, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (6, CAST(N'2021-04-15T22:26:51.883' AS DateTime), 1, NULL, 1, 11, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (7, CAST(N'2021-04-15T22:28:36.757' AS DateTime), 1, NULL, 1, 12, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (9, CAST(N'2021-04-23T11:38:30.620' AS DateTime), 0, NULL, 0, 13, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (10, CAST(N'2021-04-25T08:08:20.747' AS DateTime), 0, NULL, 0, 14, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (11, CAST(N'2021-04-25T15:22:36.147' AS DateTime), 0, NULL, 0, 15, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (12, CAST(N'2021-04-25T15:31:48.393' AS DateTime), 1, NULL, 1, 16, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1, N'Nguyễn văn A', N'123 Bùi đình túy, Q BT, TPHCM', N'vana@gmail.com', N'01235475231', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (2, N'Đỗ Văn B', N'23 XVNT, Q.BT, TPHCM', N'Dob@gmail.com', N'01234324232', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (3, N'Phạm Thế C', N'763 Đồng khởi, Q1, TPHCM', N'TheC@gmail.com', N'04349954312', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (4, N'Nguyễn văn D', N'123 Bùi đình túy, Q BT, TPHCM', N'vana@gmail.com', N'01235475231', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (5, N'Đỗ Văn E', N'23 XVNT, Q.BT, TPHCM', N'Dob@gmail.com', N'01234324232', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (6, N'Phạm Thế F', N'763 Đồng khởi, Q1, TPHCM', N'TheC@gmail.com', N'04349954312', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (7, N'Nguyễn văn G', N'123 Bùi đình túy, Q BT, TPHCM', N'vana@gmail.com', N'01235475231', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (8, N'Đỗ Văn H', N'23 XVNT, Q.BT, TPHCM', N'Dob@gmail.com', N'01234324232', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (9, N'Phạm Thế I', N'763 Đồng khởi, Q1, TPHCM', N'TheC@gmail.com', N'04349954312', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (10, N'le gia huy', N'123 nguyen trung truc', N'asdda@gmail.com', N'0123456789', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (11, N'le gia huy', N'100 Nguyễn Huệ, Q1, TPHCM', N'admin@gmail.com', N'0123456789', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (12, N'Lê Gia Huy', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', N'0123456789', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (13, N'Lê Gia Huy', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', N'0123456789', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (14, N'Lê Gia Huy', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', N'0123456789', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (15, N'Lê Gia Huy', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (16, N'Lê Gia Huy', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', NULL, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (1, N'Balo', N'fas fa-laptop', N'Balo')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (2, N'Túi Đeo', N'fas fa-hdd', N'Túi Đeo')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (3, N'Túi Xách', N'fas fa-keyboard', N'Túi Xách')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (4, N'Balo Chống Sốc', N'fas fa-mouse', N'Balo Chống Sốc')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (5, N'Phụ Kiện', N'fas fa-headphones', N'Phụ Kiện')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (6, N'Cặp', N'fas fa-desktop', N'Cặp')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (7, N'Giảm Giá', N'fas fa-mobile', N'Giảm Giá')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] ON 

INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'Admin', 0)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'Staff', 0)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (3, N'Khách Thường', 5)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (4, N'Khách Vip', 10)
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] OFF
GO
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'DangNhap', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'QuanLy', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'QuanTriWeb', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (2, N'DangNhap', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (2, N'QuanLy', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (3, N'DangNhap', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (4, N'DangNhap', NULL)
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (1, N'VietNam', N'180/17 Nguyễn Hữu Cảnh, phường 22, Bình Thạnh,TP.HCM', N'contact@vietcargo.vn', N'0931620000', N'02866567777')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (2, N'My', N'79/14 Dương Quảng Hàm, Cầu Giấy, Hà Nội', N'contact@ezitrans.com', N'0867503500', N'0389118500')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (3, N'HanQuoc', N'14/16A Thân Nhân Trung, P.13, Q. Tân Bình, HCM', N'hotro@pakago.com', N'0886788247', N'02866567777')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (4, N'ThaiLan', N'167 Quang Trung, Đống Đa, Hà Nội', N'lienhe@indochinapost.com', N'0931620000', N'02866567777')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (5, N'Campuchia', N'39 Hồng Hà, P.2, Q. Tân Bình, HCM', N'tantrieuexpress@gmail.com', N'0905620000', N'02863569777')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (6, N'cargoexpress', N'158/2 Hoàng Hoa Thám, P.12, Q. Tân Bình, Tp. HCM', N'contact@cargoexpress.vn', N'02822537487', N'02863569777')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (1, N'TUCANO', N'TUCANO@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (2, N' Arctic Hunter', N'Crumpler@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (3, N'Tactical', N'Tactical@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (4, N'Razor', N'Razor_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (5, N'Jack Wolfskin', N'MSI_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (6, N'adidas', N'HP_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (7, N'Lenovo', N'Lenovo_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (8, N'THE NORTH FACE', N'Logitech_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (9, N'Balo Puma', N'Acer_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (10, N'Xiaomi', N'Xiaomi_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (11, N'Simplecarry', N'ZTE_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (12, N'Targus', N'Fuhlen_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (13, N'Corsair', N'Corsair_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (14, N'SteelSeries', N'SteelSeries_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (15, N' SAKOS', N'SamSung_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (16, N'LG', N'LG_Pro@gmail.com')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (1, 1, NULL, 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (2, 1, NULL, 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (3, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (4, 2, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (5, 3, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (7, 1, NULL, NULL)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (8, 1, NULL, NULL)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (9, 1, NULL, NULL)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (10, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (11, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (12, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (13, 3, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (14, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (15, 6, CAST(N'2021-04-25T01:18:31.977' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (16, 6, CAST(N'2021-04-25T01:22:20.483' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (17, 6, CAST(N'2021-04-25T01:25:06.517' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (18, 1, CAST(N'2021-04-25T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (19, 6, CAST(N'2021-04-25T15:25:38.263' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (20, 1, CAST(N'2021-04-25T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (21, 6, CAST(N'2021-04-25T15:35:07.850' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
GO
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'DangNhap', N'Đăng nhập')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanLy', N'Quản lý')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanTriWeb', N'Quản trị web')
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (1, N'Balo thời trang Hàn Quốc (EP04)', CAST(500000 AS Decimal(18, 0)), NULL, N'Nếu bạn đang cần một chiếc Balo laptop thời trang hay một chiếc balo đi học cá tính cho học sinh, sinh viên, hãy tham khảo ngay mẫu balo laptop thời trang nhỏ gọn đến từ thương hiệu đình đám Xbags - Xbags Modern.Trang nhã, thanh lịch nhưng không kém phần cá tính, hiện đại Xbags Modern sẽ là bạn đồng hành tin cậy trong cuộc sống của bạn	', N'<p>Nếu bạn đang cần một chiếc Balo laptop thời trang hay một chiếc balo đi học c&aacute; t&iacute;nh cho học sinh, sinh vi&ecirc;n, h&atilde;y tham khảo ngay mẫu balo laptop thời trang nhỏ gọn đến từ thương hiệu đ&igrave;nh đ&aacute;m Xbags - Xbags Modern.Trang nh&atilde;, thanh lịch nhưng kh&ocirc;ng k&eacute;m phần c&aacute; t&iacute;nh, hiện đại Xbags Modern sẽ l&agrave; bạn đồng h&agrave;nh tin cậy trong cuộc sống của bạn &nbsp; &nbsp;</p>', N'20.png	', 23, 2, 0, 0, 3, 1, 1, 2, 1, 0, N'20.png	', N'20.png	', N'8.png', N'8.png')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (2, N'Balo học sinh, sinh viên ZM (EP26)', CAST(470000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Bạn đang cần một chiếc balo đi phượt nam, kích cỡ lớn để đồng hành trong những chuyến đi du lịch hay balo size lớn đựng laptop 17 inch để cùng đến cơ quan mỗi ngày? Vậy hãy tham khảo ngay mẫu balo du lịch cỡ lớn đến từ thương hiệu đình đám Xbags - Xbags Leader, cùng bạn trở thành người dẫn đầu.
Trang nhã, thanh lịch nhưng không kém phần mạnh mẽ và tiện lợi, balo đi phượt nam size lớn Xbags Leader sẽ là bạn đồng hành tin cậy trong công việc và hành trình khám phá của bạn', NULL, N'153002-01.jpg', 9, 12, 0, 0, 3, 1, 1, 2, 1, 0, N'153002-01.jpg', N'153002-01.jpg', N'20-768x768.jpg', N'20-768x768.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (3, N'BALO LAPTOP THỜI TRANG NHỎ GỌN XBAGS MODERN', CAST(789000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Nếu bạn đang cần một chiếc balo laptop thời trang hay một chiếc balo đi học cá tính cho học sinh, sinh viên, hãy tham khảo ngay mẫu balo laptop thời trang nhỏ gọn đến từ thương hiệu đình đám Xbags - Xbags Modern.
Trang nhã, thanh lịch nhưng không kém phần cá tính, hiện đại Xbags Modern sẽ là bạn đồng hành tin cậy trong cuộc sống của bạn', NULL, N'balo-laptop-thoi-trang-nho-gon.jpg', 8, 50, 0, 0, 3, 1, 1, 2, 1, 0, N'balo-laptop-thoi-trang-nho-gon.jpg', N'balo-laptop-thoi-trang-nho-gon.jpg', N'z3423971423328-969d15a774c0f080d4c5dcfd9935e265.jpg', N'z3423971423328-969d15a774c0f080d4c5dcfd9935e265.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (4, N'Balo công sở cao cấp ARCTIC HUNTER (CS08)', CAST(650000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'✪ Đặc điểm sản phẩm:
✔ Chất vải PE cao cấp với khả năng chống thấm hiệu quả, thuận tiện khi cần giặt sạch
✔ Dung tích balo lớn với các ngăn sắp xếp khoa học, giúp tăng khả năng chứa đồ đạc và tài liệu
✔ Ngăn chống sốc laptop với mặt trong lót xốp
✔ Kích thước (Cao x Ngang x Sâu): 42x31x11cm
Mã sản phẩm: CS08
Tình trạng: còn hàng', NULL, N'balo-công-sở-doanh-nhân-768x768.jpg', 14, 12, 0, 0, 3, 1, 1, 2, 1, 0, N'balo-công-sở-doanh-nhân-768x768.jpg', N'balo-công-sở-doanh-nhân-768x768.jpg', N'ba-lô-đi-công-tác-nước-ngoài-768x768.jpg', N'ba-lô-đi-công-tác-nước-ngoài-768x768.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (5, N'BALO LAPTOP THỜI TRANG NHỎ GỌN XBAGS MODERN', CAST(723300 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'✔ Kích thước sản phẩm: 46cm x 30cm x 15cm.
✔ Tích hợp khóa số chống trộm giúp bạn bảo vệ balo an toàn
✔ Balo tích hợp cáp sạc USB tiện lợi để sạc điện thoại, và lỗ tai nghe tiện nghi
✔ Thiết kế có nhiều ngăn rộng rãi để đc máy tính, điện thoại, máy tính bảng, cặp sách…
✔ Trọng lượng nhẹ, thích hợp cho việc di chuyển dễ dàng
✔ Thiết kế thoáng khí, màu sắc hài hòa mang phong cách Hàn Quốc.
✔ Phù hợp đi chơi, đi làm, đi học, hoặc đi du lịch', NULL, N'9f9ededb9c02665c3f131-768x768.jpg', 9, 12, 0, 0, 3, 1, 1, 2, 1, 0, N'a66bd13793ee69b030ff7-768x768.jpg', N'a66bd13793ee69b030ff7-768x768.jpg', N'a66bd13793ee69b030ff7-768x768.jpg', N'a66bd13793ee69b030ff7-768x768.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (6, N'Balo Thời Trang Cao Cấp Thomas (EP35)', CAST(390000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Mẫu balo thời trang Thomas (TMS) chất lượng cao, thiết kế theo phong cách hiện đại – trẻ trung
Kiểu dáng balo đơn giản theo xu hướng thời trang thịnh hành đương đại
Balo được may từ chất liệu vải bền đẹp, chống thấm nước và dễ dàng giặt sạch
Bên trong balo sắp xếp các ngăn lớn và nhỏ, thuận tiện cho việc đựng đồ đạc, sách vở tài liệu…
Đường may cẩn thận, khóa kéo hãng SBS êm mượt, dây đeo chắc chắn
Kích thước hoàn hảo để phối hợp với các trang phục (Cao x Ngang x Sâu): 40x30x16cm', NULL, N'1-3-768x768.jpg', 9, 12, 0, 0, 3, 1, 1, 1, 1, 0, N'1-3-768x768.jpg', N'1-3-768x768.jpg', N'1-3-768x768.jpg', N'1-3-768x768.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (7, N'Balo thời trang học sinh EPUS (EV01)', CAST(340000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'– Mẫu thiết kế theo style Hàn Quốc trẻ trung, năng động
– Chất liệu vải PE trơn lạnh chất lượng cao, với khả năng chống thấm hiệu quả
– Các ngăn bên trong balo thiết kế với một ngăn đựng laptop và ngăn chính đựng tài liệu, sách vở hoặc đồ dùng cá nhân
– Bên ngoài thiết kế các ngăn phụ đằng trước với phong cách hiện đại. Hai ngăn phụ hai bên với khóa kéo an toàn cho đựng đồ
– Đường may cẩn thận, khóa kéo chắc chắn
– Kích thước: 42x39x14 cm
Tình trạng: còn hàng	', NULL, N'balo-đi-học-nữ-màu-đen-1.jpg', 14, 12, 0, 0, 3, 1, 1, 1, 1, 0, N'balo-đi-học-nữ-màu-đen-1.jpg', N'balo-đi-học-nữ-màu-đen-1.jpg', N'balo-đi-học-nữ-màu-đen-1.jpg', N'balo-đi-học-nữ-màu-đen-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (8, N'Balo học sinh, sinh viên ZM (EP26)', CAST(679000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'✔ Mẫu thiết kế theo style Hàn Quốc mới nhất
✔ Chất liệu vải PE cao cấp với khả năng chống thấm hiệu quả
✔ Các ngăn bên trong balo thiết kế tiện lợi, giúp đựng sách vở, laptop và đồ dùng cá nhân
✔ Đường may cẩn thận, khóa kéo êm nhẹ
✔ Màu sắc cá tính với hai màu: Đen – Trắng
✔ Kích thước: 44x31x11cm
✔ Phù hợp cho các mục đích sử dụng: đi học, đi chơi, du lịch…', NULL, N'BL45-7.jpg', 9, 12, 0, 0, 3, 1, 1, 1, 1, 0, N'20-768x768.jpg', N'20-768x768.jpg', N'20-768x768.jpg', N'20-768x768.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (9, N'Balo học sinh, sinh viên ZM (EP26)', CAST(40000000 AS Decimal(18, 0)), NULL, N'✔ Mẫu thiết kế theo style Hàn Quốc mới nhất ✔ Chất liệu vải PE cao cấp với khả năng chống thấm hiệu quả ✔ Các ngăn bên trong balo thiết kế tiện lợi, giúp đựng sách vở, laptop và đồ dùng cá nhân ✔ Đường may cẩn thận, khóa kéo êm nhẹ ✔ Màu sắc cá tính với hai màu: Đen – Trắng ✔ Kích thước: 44x31x11cm ✔ Phù hợp cho các mục đích sử dụng: đi học, đi chơi, du lịch…', N'<h2>Balo cho nam v&agrave; nữ kiểu d&aacute;ng unisex thời trang phong c&aacute;ch H&agrave;n Quốc, thiết kế theo phong c&aacute;ch đường phố cho cả nam v&agrave; nữ. Balo ph&ugrave; hợp cho mục đ&iacute;ch sử dụng đi học, đi l&agrave;m hoặc đi chơi</h2>', N'balo-chong-soc-laptop.jpg', 9, 12, 2, 2, 3, 2, 2, 15, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (10, N'Balo Laptop 15.6 inch Targus Intellect TBB565GL-74 Đen', CAST(569000 AS Decimal(18, 0)), NULL, N'✔ Mẫu thiết kế theo style Hàn Quốc mới nhất ✔ Chất liệu vải PE cao cấp với khả năng chống thấm hiệu quả ✔ Các ngăn bên trong balo thiết kế tiện lợi, giúp đựng sách vở, laptop và đồ dùng cá nhân ✔ Đường may cẩn thận, khóa kéo êm nhẹ ✔ Màu sắc đơn giản, cá tính với hai màu: Đen – Trắng ✔ Kích thước: 43x30x14cm', NULL, N'balo-laptop-sakos-galaxy-i15-mau-den.png', 9, 12, 1, 1, 5, 1, 1, 11, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (12, N'Balo thời trang học sinh EPUS (EV01)', CAST(567899 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'– Mẫu thiết kế theo style Hàn Quốc trẻ trung, năng động – Chất liệu vải PE trơn lạnh chất lượng cao, với khả năng chống thấm hiệu quả – Các ngăn bên trong balo thiết kế với một ngăn đựng laptop và ngăn chính đựng tài liệu, sách vở hoặc đồ dùng cá nhân – Bên ngoài thiết kế các ngăn phụ đằng trước với phong cách hiện đại. Hai ngăn phụ hai bên với khóa kéo an toàn cho đựng đồ – Đường may cẩn thận, khóa kéo chắc chắn – Kích thước: 42x39x14 cm', NULL, N'Y8UT6C6hsLc3.jpg', 4, 12, 1, 1, 3, 2, 2, 10, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (13, N'Balo thời trang khóa số chống trộm (EP15)', CAST(570000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'✔ Kích thước sản phẩm: 46cm x 30cm x 15cm. ✔ Tích hợp khóa số chống trộm giúp bạn bảo vệ balo an toàn ✔ Balo tích hợp cáp sạc USB tiện lợi để sạc điện thoại, và lỗ tai nghe tiện nghi ✔ Thiết kế có nhiều ngăn rộng rãi để đc máy tính, điện thoại, máy tính bảng, cặp sách… ✔ Trọng lượng nhẹ, thích hợp cho việc di chuyển dễ dàng ✔ Thiết kế thoáng khí, màu sắc hài hòa mang phong cách Hàn Quốc. ✔ Phù hợp đi chơi, đi làm, đi học, hoặc đi du lịch.', NULL, N'balo-fedom-nitro-balo-laptop-nho-gon.jpg', 4, 12, 1, 1, 3, 1, 3, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (14, N'Balo Thời Trang Cao Cấp Thomas (EP35)', CAST(570000 AS Decimal(18, 0)), CAST(N'2022-12-06T00:00:00.000' AS DateTime), N'Mẫu balo thời trang Thomas (TMS) chất lượng cao, thiết kế theo phong cách hiện đại – trẻ trung Kiểu dáng balo đơn giản theo xu hướng thời trang thịnh hành đương đại Balo được may từ chất liệu vải bền đẹp, chống thấm nước và dễ dàng giặt sạch Bên trong balo sắp xếp các ngăn lớn và nhỏ, thuận tiện cho việc đựng đồ đạc, sách vở tài liệu… Đường may cẩn thận, khóa kéo hãng SBS êm mượt, dây đeo chắc chắn Kích thước hoàn hảo để phối hợp với các trang phục (Cao x Ngang x Sâu): 40x30x16cm', NULL, N'balo-laptop-dep-balo-kk-2255-7.jpg', 4, 12, 0, 0, 3, 1, 4, 13, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (15, N'Balo Thời Trang Cao Cấp EDFR', CAST(6700000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Mẫu balo thời trang Thomas (TMS) chất lượng cao, thiết kế theo phong cách hiện đại – trẻ trung Kiểu dáng balo đơn giản theo xu hướng thời trang thịnh hành đương đại Balo được may từ chất liệu vải bền đẹp, chống thấm nước và dễ dàng giặt sạch Bên trong balo sắp xếp các ngăn lớn và nhỏ, thuận tiện cho việc đựng đồ đạc, sách vở tài liệu… Đường may cẩn thận, khóa kéo hãng SBS êm mượt, dây đeo chắc chắn Kích thước hoàn hảo để phối hợp với các trang phục (Cao x Ngang x Sâu): 40x30x16cm', NULL, N'balo-laptop-dep-balo-kk-2255-7.jpg', 4, 12, 0, 0, 3, 1, 2, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (16, N'Balo Laptop 98765', CAST(450000 AS Decimal(18, 0)), CAST(N'2022-06-06T00:00:00.000' AS DateTime), N'– Thương hiệu: ELLY. – Sản xuất: Việt Nam; Trung Quốc (theo tiêu chuẩn chất lượng của thương hiệu ELLY). – Màu sắc: Đen. – Kích thước: 27 x 35 x 11 cm (chiều ngang x chiều dọc x độ dày). – Chất liệu: Da bò cao cấp nhập khẩu từ Italy mềm mại, bóng mịn, dày dặn, chống thấm nước, chống bám bám bụi và trầy xước, càng sử dụng lâu càng bóng đẹp và bền màu với thời gian. – Bảo hành: 06 tháng (với lỗi do sản xuất).', N'<p><strong>&ndash; Thương hiệu:&nbsp;</strong>ELLY.<br /><strong>&ndash; Sản xuất</strong>: Việt Nam; Trung Quốc (theo ti&ecirc;u chuẩn chất lượng của thương hiệu ELLY).<br /><strong>&ndash; M&agrave;u sắc:</strong>&nbsp;Đen.<br /><strong>&ndash; K&iacute;ch thước:</strong>&nbsp;27&nbsp;x&nbsp;35 x 11 cm (chiều ngang&nbsp;x chiều dọc x độ d&agrave;y).<br /><strong>&ndash; Chất liệu:&nbsp;</strong>Da b&ograve; cao cấp nhập khẩu từ Italy mềm mại, b&oacute;ng mịn, d&agrave;y dặn, chống thấm nước, chống b&aacute;m b&aacute;m bụi v&agrave; trầy xước, c&agrave;ng sử dụng l&acirc;u c&agrave;ng b&oacute;ng đẹp v&agrave; bền m&agrave;u với thời gian.<br /><strong>&ndash; Bảo h&agrave;nh:&nbsp;</strong>06 th&aacute;ng (với lỗi do sản xuất).</p>', N'57370_balo_coolbell_cb_8022_15_6_inch_den_1.jpg', 4, 12, -2, 2, 3, 1, 4, 14, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (17, N'BALO NẮP GẬP MÀU KEM NHIỀU NGĂN PHỐI VIỀN - BAC 0160 - MÀU HỒNG', CAST(567800 AS Decimal(18, 0)), NULL, NULL, NULL, N'57370_balo_coolbell_cb_8022_15_6_inch_den_1.jpg', 4, 12, 0, 0, 3, 1, 2, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (18, N'Balo Thời Trang Cao Cấp Thomas (EP35)', CAST(13000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'download.jpg', 4, 12, 0, 0, 3, 1, 3, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (20, N'BALO PHỐI LAYER VIỀN ĐEN - BAC 0162 - MÀU ĐỎ', CAST(2400000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Mã sản phẩm 1011BAC0162 Loại sản phẩm Balo Kích thước (dài x rộng x cao) 25*10*27.5 cm Chất liệu Da nhân tạo Kiểu khóa Khóa kéo Trọng lượng 1200 gram Số ngăn 1 ngăn lớn, 3 ngăn nhỏ Kích cỡ Trung bình Phù hợp sử dụng Đi làm, đi học, đi chơi', NULL, N'download.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 2, 0, N'download.jpg', N'download.jpg', N'download (1).jpg', N'download (1).jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (21, N'Túi Thời Trang Cao Cấp Thomas (EP35)', CAST(753333 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Mã sản phẩm 1011BAC0165 Loại sản phẩm Balo Kích thước (dài x rộng x cao) 23.9*7*15.3 cm Chất liệu Da nhân tạo Chất liệu dây đeo Dây da Kiểu khóa Khóa nam châm Số ngăn 2 ngăn lớn, 2 ngăn nhỏ Kích cỡ Trung bình Phù hợp sử dụng Đi làm, đi học, đi chơi', NULL, N'870A1994.jpg', 4, 12, 9, 5, 3, 1, 4, 15, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (22, N'BALO NỮ CAO CẤP DA THẬT ELLY – EB8654', CAST(560000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'– Thương hiệu: ELLY. – Sản xuất: Việt Nam; Trung Quốc (theo tiêu chuẩn chất lượng của thương hiệu ELLY). – Màu sắc: Đen. – Kích thước: 27 x 35 x', NULL, N'2c545bd9c4d0b2dfa2afc27b42b32016.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (23, N'BALO PHỐI LAYER VIỀN ĐEN - BAC 0162 - MÀU TRẮNG', CAST(340000 AS Decimal(18, 0)), NULL, NULL, NULL, N'tui-deo-cheo-nu-di-choi-mini-ca-tinh-hang-hieu-cute-micocah-fsf563-m453-A.jpg', 4, 12, 0, 0, 3, 1, 4, 10, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (24, N'TÚI ĐEO CHÉO IPAD DU LỊCH THỜI TRANG CÔNG SUẤT LỚN – BANGE 7086', CAST(4500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, N'images.jpg', N'images.jpg', N'images (1).jpg', N'images (1).jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (25, N'TÚI ĐEO CHÉO IPAD, DU LỊCH VỎ CỨNG EVA – 12 INCH – ARCTIC HUNTER – HARDCASE 126', CAST(450000 AS Decimal(18, 0)), NULL, NULL, NULL, N'XhnyHv_simg_de2fe0_500x500_maxb.jpg', 4, 12, 0, 0, 3, 1, 1, 12, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (26, N'TÚI ĐEO CHÉO, ĐEO HÔNG ĐA NĂNG – OZUKO ZIPPI – 9103', CAST(560000 AS Decimal(18, 0)), NULL, NULL, NULL, N'tui-deo-cheo-mini-nu1-1614752241.png', 4, 12, 0, 0, 3, 1, 5, 5, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (27, N'TÚI ĐEO CHÉO DU LỊCH ĐA NĂNG, CÓ KHÓA SỐ CHỐNG TRỘM – BANGER RIDER – CARBON', CAST(450000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'17062964395_558411745.jpg', 4, 12, 0, 0, 3, 1, 3, 4, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (28, N'TÚI ĐEO CHÉO IPAD DU LỊCH THỜI TRANG CÔNG SUẤT LỚN – BANGE 7086', CAST(3490000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (2).jpg', 4, 12, 0, 0, 3, 1, 4, 14, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (29, N'TÚI XÁCH NỮ THỜI TRANG CAO CẤP ELLY – EL95', CAST(13000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (2).jpg', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (30, N'BALO NỮ CAO CẤP DA THẬT ELLY – EB20', CAST(700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (3).jpg', 4, 12, 0, 0, 3, 1, 5, 7, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (31, N'TÚI CLUTCH NỮ THỜI TRANG ELLY- ECH51', CAST(900000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (3).jpg', 4, 12, 0, 0, 3, 1, 1, 8, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (32, N'TÚI XÁCH NỮ CAO CẤP DA THẬT ELLY – ET54', CAST(500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (3).jpg', 4, 12, 0, 0, 3, 1, 1, 5, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (33, N'TÚI XÁCH NỮ THỜI TRANG CAO CẤP ELLY – EL95', CAST(2000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (4).jpg', 4, 12, 0, 0, 3, 1, 1, 2, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (34, N'TÚI XÁCH NỮ THỜI TRANG CAO CẤP ELLY – EL95', CAST(3000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (5).jpg', 4, 12, 0, 0, 3, 1, 1, 2, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (35, N'Túi chống sốc Laptop 14 inch Targus CityGear TSS931GL-80 Đen', CAST(67000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (4).jpg', 4, 12, 0, 0, 3, 1, 1, 2, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (37, N'Túi chống sốc Laptop TSS931GL-80 Đen', CAST(1500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (5).jpg', 4, 12, 0, 0, 3, 1, 1, 1, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (38, N'Túi chống sốc Laptop 13 inch TOMTOC A13-C02D/C02G', CAST(400000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (6).jpg', 4, 12, 0, 0, 3, 1, 1, 1, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (39, N'Túi chống sốc Laptop 15 inch Tucano Top Second Skin', CAST(1000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (7).jpg', 4, 12, 0, 0, 3, 1, 1, 1, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (40, N'Túi chống sốc Laptop 14 inch Targus CityGear TSS931GL-80 Đen', CAST(600000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (8).jpg', 4, 12, 0, 0, 3, 1, 1, 1, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (41, N'Túi chống sốc Laptop 13 inch TOMTOC A13-C02D/C02G', CAST(1200000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (9).jpg', 4, 12, 0, 0, 3, 1, 1, 2, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (42, N'Túi chống sốc Laptop 13 inch TOMTOC A13-C02D/C02G', CAST(1400000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (11).jpg', 4, 12, 0, 0, 3, 1, 1, 2, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (43, N'Túi xách Laptop 13.3 đến 15.6 inch Rivacase 7915 Xám', CAST(1900000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (10).jpg', 4, 12, 0, 0, 3, 1, 1, 2, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (46, N'Bạch tuộc Phụ kiện đi kèm túi, balo Colkids', CAST(3700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (17).jpg', 4, 12, 0, 0, 3, 1, 1, 2, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (47, N'Móc khóa móc cài balo phụ kiện Fancy', CAST(23000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (6).jpg', 4, 12, 0, 0, 3, 1, 1, 11, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (48, N'Móc khóa móc cài balo phụ kiện Fancy', CAST(67000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (7).jpg', 4, 12, 0, 0, 3, 1, 1, 2, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (49, N'Phụ kiện balo MCM treo túi - SẴN HÀNG', CAST(1900000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (8).jpg', 4, 12, 0, 0, 3, 1, 1, 1, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (50, N'Phụ kiện balo MCM treo túi - SẴN HÀNG', CAST(1300000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (12).jpg', 4, 12, 0, 0, 3, 1, 1, 1, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (51, N'CẶP ĐA NĂNG 400 ĐEN', CAST(3700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (9).jpg', 4, 12, 0, 0, 3, 1, 1, 1, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (52, N'CẶP ĐA NĂNG 6543ĐEN', CAST(1100000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (10).jpg', 4, 12, 0, 0, 3, 1, 1, 1, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (53, N'CẶP ĐA NĂNG 67', CAST(4600000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (11).jpg', 4, 12, 0, 0, 3, 1, 1, 1, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (54, N'CẶP ĐA NĂNG 419 ĐEN', CAST(780000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (13).jpg', 4, 12, 0, 0, 3, 1, 1, 1, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (55, N'CẶP ĐA NĂNG 414 ĐEN', CAST(560000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (14).jpg', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (56, N'BALO TEEN 835 HỒNG SEN', CAST(9000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (15).jpg', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (57, N'Balo Đa Năng BLD3631', CAST(7000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (16).jpg', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (58, N'Balo Đa Năng BLD3631', CAST(1700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (16).jpg', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (59, N'BALO PHỐI LAYER VIỀN ĐEN - BAC 0162 - MÀU TRẮNG', CAST(2600000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (13).jpg', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (60, N'BALO PHỐI DÂY KHÓA TRANG TRÍ HỌA TIẾT NGỰA VẰN - BAC 0165 - MÀU ĐEN', CAST(12000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (61, N'BALO PHỐI QUAI NÂU PRISM SHAPE - BAC 0161 - MÀU XANH BẠC HÀ ĐẬM', CAST(30000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (62, N'BALO PHỐI QUAI NÂU PRISM SHAPE - BAC 0161 - MÀU XANH BẠC HÀ ĐẬM', CAST(27000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (63, N'BALO PHỐI DÂY KHÓA TRANG TRÍ HỌA TIẾT NGỰA VẰN - BAC 0165 - MÀU ĐEN', CAST(4700000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (64, N'BALO PHỐI DÂY KHÓA TRANG TRÍ HỌA TIẾT NGỰA VẰN - BAC 0165 - MÀU ĐEN', CAST(6000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (65, N'BALO PHỐI LAYER VIỀN ĐEN - BAC 0162 - MÀU TRẮNG', CAST(30000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (66, N'BALO PHỐI HOLOGRAM VÂN DA CÁ SẤU - BAC 0159 - MÀU ĐEN', CAST(10000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (67, N'BALO PHỐI HOLOGRAM VÂN DA CÁ SẤU - BAC 0159 - MÀU ĐEN', CAST(5000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (68, N'BALO NẮP GẬP KHÓA NAM CHÂM CHỮ U - BAC 0150 - MÀU ĐEN', CAST(5600000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (69, N'TÚI XÁCH LAPTOP CANVAS VINTAGE VẢI SÁP DA BÒ – SQUARE IV', CAST(36000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (70, N'BALO NẮP GẬP VÂN DA CÁ SẤU KHÓA CÀI CHỮ NHẬT - BAC 0153 - MÀU ĐEN', CAST(50000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (71, N'BALO NẮP GẬP VÂN DA CÁ SẤU KHÓA CÀI CHỮ NHẬT - BAC 0153 - MÀU ĐEN', CAST(20000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (72, N'BALO NẮP GẬP VÂN DA CÁ SẤU KHÓA CÀI CHỮ NHẬT - BAC 0153 - MÀU ĐEN', CAST(32000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (73, N'BALO NẮP GẬP VÂN DA CÁ SẤU KHÓA CÀI CHỮ NHẬT - BAC 0153 - MÀU ĐEN', CAST(20000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (74, N'BALO NẮP GẬP VÂN DA CÁ SẤU KHÓA CÀI CHỮ NHẬT - BAC 0153 - MÀU ĐEN', CAST(46000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (75, N'TÚI XÁCH LAPTOP CANVAS VINTAGE VẢI SÁP DA BÒ – SQUARE IV', CAST(28000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (76, N'TÚI ĐEO CHÉO DU LỊCH THỜI TRANG – BANGE – 2353', CAST(2100000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (77, N'TÚI ĐEO CHÉO DU LỊCH THỜI TRANG – BANGE – 2353', CAST(23000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (78, N'TÚI ĐEO CHÉO, ĐEO HÔNG ĐA NĂNG – OZUKO ZIPPI – 9103', CAST(2500000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (79, N'TÚI CLUTCH NỮ CAO CẤP DA THẬT ELLY – EC60', CAST(50000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (80, N'TÚI CLUTCH NỮ CAO CẤP DA THẬT ELLY – EC60', CAST(1000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (16).jpg', 4, 12, 0, 0, 3, 1, 1, 3, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (81, N'TÚI CLUTCH NỮ CAO CẤP DA THẬT ELLY – EC60', CAST(38000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (82, N'TÚI ĐEO CHÉO, ĐEO HÔNG ĐA NĂNG – OZUKO ZIPPI – 9103', CAST(1200000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (83, N'TÚI CLUTCH NỮ CAO CẤP DA THẬT ELLY – EC60', CAST(4300000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (84, N'TÚI CLUTCH NỮ CAO CẤP DA THẬT ELLY – EC60', CAST(3800000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (85, N'TÚI ĐEO CHÉO DU LỊCH THỜI TRANG – BANGE – 2353', CAST(120000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (86, N'Túi chống sốc Laptop 13 inch TOMTOC A22-C02B01 Xanh đậm', CAST(1200000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (87, N'Túi chống sốc Laptop 13 inch TOMTOC A22-C02B01 Xanh đậm', CAST(1700000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (88, N'Balo Đa Năng BLD3633', CAST(2500000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (89, N'Bạch tuộc Phụ kiện đi kèm túi, balo Colkids', CAST(2000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (17).jpg', 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (90, N'Bạch tuộc Phụ kiện đi kèm túi, balo Colkids', CAST(2700000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (91, N'Bạch tuộc Phụ kiện đi kèm túi, balo Colkids', CAST(4700000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (92, N'Bạch tuộc Phụ kiện đi kèm túi, balo Colkids', CAST(5000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (93, N'Bạch tuộc Phụ kiện đi kèm túi, balo Colkids', CAST(5000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (94, N'Balo Đa Năng BLD3633', CAST(4500000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (95, N'Balo Đa Năng BLD3633', CAST(13500000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (96, N'Balo Đa Năng BLD3636', CAST(26500000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (97, N'Balo Đa Năng BLD3636', CAST(17500000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (98, N'Balo Đa Năng BLD3636', CAST(5500000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (99, N'Balo Đa Năng BLD3636', CAST(3200000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (100, N'TÚI ĐEO CHÉO, ĐEO HÔNG ĐA NĂNG – OZUKO ZIPPI – 9103', CAST(150000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (17).jpg', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, N'images (17).jpg', N'images (17).jpg', N'images (18).jpg', N'images (18).jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (101, N'TÚI ĐEO CHÉO DU LỊCH THỜI TRANG – BANGE – 2353', CAST(13000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'images (19).jpg', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, N'images (19).jpg', N'images (19).jpg', N'images (20).jpg', N'images (20).jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (102, N'TÚI MESSENGER IPAD ĐEO CHÉO VẢI CANVAS VINTAGE – POSTMAN I', CAST(15000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (12).jpg', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, N'download (12).jpg', N'download (12).jpg', N'download (13).jpg', N'download (13).jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (103, N'BA LÔ GÙ CỨNG KIÊM THÙNG SAU XE MÁY – ROCKBIKER', CAST(14000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (14).jpg', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (104, N'BA LÔ ROLLTOP VINTAGE VẢI CANVAS SÁP DẦU, DA BÒ SÁP – ROLLER', CAST(26000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'download (15).jpg', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (105, N'BALO HÔNG ĐA NĂNG – OZUKO ZIPPI – 9103', CAST(60000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (106, N'Razer Blade 15 Base Edition - Full HD 144Hz -  RTX 3070 - Black', CAST(46000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (107, N'Razer Blade Pro 17 - QHD 165Hz - RTX 3060 - Black', CAST(53000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (108, N'Razer Blade Pro 17 - 4K Touch 120Hz - RTX 3080 - Black', CAST(83000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (109, N'Razer Blade 15 Advanced Edition - QHD 240Hz - GeForce RTX 3080 - Black', CAST(67000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (110, N'Razer Book 13 - Full HD 60Hz ', CAST(28000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (111, N'Razer Blade Stealth 13 - Full HD 120Hz - GTX 1650 Ti Max-Q - Black', CAST(40000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (112, N'Razer Tomahawk Gaming Desktop - RTX 3080 - Intel NUC', CAST(75000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (113, N'Razer Tomahawk Gaming Desktop with Intel NUC only', CAST(55000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (114, N'Razer Huntsman V2 Analog', CAST(7500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (115, N'Razer BlackWidow V3 - Black', CAST(3500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (116, N'Razer BlackWidow V3 Pro', CAST(6000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (117, N'Razer Pro Type', CAST(4000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (118, N'Razer Huntsman Mini', CAST(3200000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (119, N'RAZER BLACKWIDOW LITE', CAST(2000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (120, N'Razer Viper 8KHz', CAST(2000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (121, N'Razer Naga X', CAST(2300000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (122, N'Razer Naga Pro', CAST(4000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (123, N'Razer DeathAdder V2 Pro', CAST(3100000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (124, N'Razer Mamba Wireless Gears 5 Edition', CAST(2900000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (125, N'Razer BASILISK Ultimate', CAST(3200000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (126, N'Razer BlackShark V2 Pro', CAST(4500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (127, N'Razer BlackShark V2 X', CAST(1700000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (128, N'Razer BlackShark V2', CAST(2900000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (129, N'Razer Opus - Midnight Blue', CAST(6200000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (130, N'Razer Kraken Ultimate', CAST(3500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (131, N'Razer Nari Essential Gaming', CAST(2200000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (132, N'Razer Raptor 27', CAST(16000000 AS Decimal(18, 0)), CAST(N'2021-04-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (133, N'alibaba', CAST(10000000 AS Decimal(18, 0)), CAST(N'2021-04-17T00:00:00.000' AS DateTime), NULL, NULL, N'alienware-wallpaper-4285-4332-hd-wallpapers.jpg', 12, 12, 12, 12, 12, 1, 2, 7, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (134, N'asd', CAST(1233323 AS Decimal(18, 0)), CAST(N'2021-04-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, 12, 12, 12, 12, 12, 1, 6, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Gioithieu], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (139, N'macbook pro', CAST(10000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'alienware-wallpaper-79-798763-black-and-white-wallpaper-hd-photo-alienware-wallpaper.jpg', 12, 12, 12, 12, 12, 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (1, N'admin', N'123456', N'Quản trị viên', N'100 Nguyễn Huệ, Q1, TPHCM', N'admin@gmail.com', N'0123456789', N'Vật nuôi mà bạn yêu thích là gì?', N'HuyAdmin', 1)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (2, N'staff1', N'123456', N'Nhân viên 1', NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (5, N'asida118', N'123', N'Lê Gia Huy', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', NULL, N'who is your daddy', N'Huy', 3)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (7, N'asida111', N'123', N'hồ thị như loằn', N'123 ádasd', N'asd@gmail.com', N'0123456789', N'Họ tên người cha bạn là gì?', N'Huy', 3)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (8, N'asida111123', N'123', N'ád', N'100 Nguyễn Huệ, Q1, TPHCM', N'asd@gmail.com', N'0123456789', N'Vật nuôi mà bạn yêu thích là gì?', N'Huy', 3)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (9, N'staff2', N'123456', N'nhân viên 2', N'100 Nguyễn Huệ, Q1, TPHCM', N'admin@gmail.com', N'0123456789', N'Sở thích của bạn là gì', N'Huy', 2)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (11, N'staff3', N'123456', N'nhân viên 3', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', N'0123456789', N'Họ tên người cha bạn là gì?', N'Huy', 2)
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_ThanhVien]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_ToTable] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_ToTable]
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiThanhVien_Quyen_LoaiThanhVien] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen] CHECK CONSTRAINT [FK_LoaiThanhVien_Quyen_LoaiThanhVien]
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiThanhVien_Quyen_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen] CHECK CONSTRAINT [FK_LoaiThanhVien_Quyen_Quyen]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_ToTable] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_ToTable]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_ToTable] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_ToTable]
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanHang] SET  READ_WRITE 
GO
