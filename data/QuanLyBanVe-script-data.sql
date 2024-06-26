USE [QuanLyBanVe]
GO
/****** Object:  Database [QuanLyBanVe]    Script Date: 21/04/2024 9:21:32 PM ******/
CREATE DATABASE [QuanLyBanVe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanVe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyBanVe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyBanVe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyBanVe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanVe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanVe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyBanVe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanVe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanVe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanVe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanVe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyBanVe] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanVe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanVe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanVe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanVe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanVe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanVe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyBanVe] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLyBanVe] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLyBanVe]
GO
/****** Object:  Table [ChiTietHoaDon]    Script Date: 21/04/2024 9:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ChiTietHoaDon](
	[soLuong] [int] NOT NULL,
	[maHoaDon] [nchar](10) NOT NULL,
	[maVe] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ChiTietPhim]    Script Date: 21/04/2024 9:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ChiTietPhim](
	[lichChieu] [date] NULL,
	[maPhim] [nchar](10) NOT NULL,
	[maPhong] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Ghe]    Script Date: 21/04/2024 9:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ghe](
	[maGhe] [nchar](10) NOT NULL,
	[trangThai] [int] NULL,
	[tenGhe] [nchar](10) NULL,
	[maPhong] [nchar](10) NOT NULL,
 CONSTRAINT [Ghe_PK] PRIMARY KEY CLUSTERED 
(
	[maGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HoaDon]    Script Date: 21/04/2024 9:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HoaDon](
	[maHoaDon] [nchar](10) NOT NULL,
	[ngayLapHD] [date] NULL,
	[maNhanVien] [nchar](10) NOT NULL,
	[maKhachHang] [nchar](10) NOT NULL,
 CONSTRAINT [HoaDon_PK] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KhachHang]    Script Date: 21/04/2024 9:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KhachHang](
	[maKhachHang] [nchar](10) NOT NULL,
	[hasTheThanhVien] [int] NULL,
	[tenKhachHang] [nvarchar](50) NULL,
	[tuoi] [int] NULL,
	[soDienThoai] [nchar](10) NULL,
 CONSTRAINT [KhachHang_PK] PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LoaiPhim]    Script Date: 21/04/2024 9:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LoaiPhim](
	[maLoaiPhim] [nchar](10) NOT NULL,
	[tenLoaiPhim] [nvarchar](50) NULL,
	[moTa] [nvarchar](100) NULL,
 CONSTRAINT [LoaiPhim_PK] PRIMARY KEY CLUSTERED 
(
	[maLoaiPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [NhanVien]    Script Date: 21/04/2024 9:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NhanVien](
	[maNhanVien] [nchar](10) NOT NULL,
	[ngayVaoLam] [date] NULL,
	[luong] [money] NULL,
	[tenNhanVien] [nvarchar](50) NULL,
	[tuoi] [int] NULL,
	[soDienThoai] [nchar](10) NULL,
 CONSTRAINT [NhanVien_PK] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Phim]    Script Date: 21/04/2024 9:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Phim](
	[maPhim] [nchar](10) NOT NULL,
	[tenPhim] [nvarchar](50) NULL,
	[ngayKhoiChieu] [date] NULL,
	[thoiLuong] [float] NULL,
	[ngonNgu] [nchar](20) NULL,
	[gioiHanDoTuoi] [int] NULL,
	[trangThai] [int] NULL,
	[giaTien] [money] NULL,
	[maLoaiPhim] [nchar](10) NOT NULL,
 CONSTRAINT [Phim_PK] PRIMARY KEY CLUSTERED 
(
	[maPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Phong]    Script Date: 21/04/2024 9:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Phong](
	[maPhong] [nchar](10) NOT NULL,
	[soLuongGhe] [int] NULL,
	[tenPhong] [nchar](10) NULL,
 CONSTRAINT [Phong_PK] PRIMARY KEY CLUSTERED 
(
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TaiKhoan]    Script Date: 21/04/2024 9:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taiKhoan] [nchar](10) NULL,
	[matKhau] [nchar](15) NULL,
	[ngayTao] [date] NULL,
	[isNhanVien] [int] NULL,
 CONSTRAINT [TaiKhoan_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TheThanhVien]    Script Date: 21/04/2024 9:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TheThanhVien](
	[maTTV] [nchar](10) NOT NULL,
	[ngayDangky] [date] NULL,
	[loai] [nchar](20) NULL,
	[diemTichLuy] [float] NULL,
	[maKhachHang] [nchar](10) NOT NULL,
 CONSTRAINT [TheThanhVien_PK] PRIMARY KEY CLUSTERED 
(
	[maTTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Ve]    Script Date: 21/04/2024 9:21:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ve](
	[maVe] [nchar](10) NOT NULL,
	[moTa] [nvarchar](50) NULL,
	[giaTien] [money] NULL,
	[maPhim] [nchar](10) NOT NULL,
	[maGhe] [nchar](10) NOT NULL,
 CONSTRAINT [Ve_PK] PRIMARY KEY CLUSTERED 
(
	[maVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [ChiTietHoaDon] ([soLuong], [maHoaDon], [maVe]) VALUES (2, N'HD001     ', N'VE001     ')
INSERT [ChiTietHoaDon] ([soLuong], [maHoaDon], [maVe]) VALUES (3, N'HD002     ', N'VE002     ')
GO
INSERT [ChiTietPhim] ([lichChieu], [maPhim], [maPhong]) VALUES (CAST(N'2023-01-01' AS Date), N'PH001     ', N'P001      ')
INSERT [ChiTietPhim] ([lichChieu], [maPhim], [maPhong]) VALUES (CAST(N'2023-01-02' AS Date), N'PH002     ', N'P002      ')
GO
INSERT [Ghe] ([maGhe], [trangThai], [tenGhe], [maPhong]) VALUES (N'GH001     ', 1, N'Ghe VIP   ', N'P001      ')
INSERT [Ghe] ([maGhe], [trangThai], [tenGhe], [maPhong]) VALUES (N'GH002     ', 1, N'Ghe thuong', N'P002      ')
GO
INSERT [HoaDon] ([maHoaDon], [ngayLapHD], [maNhanVien], [maKhachHang]) VALUES (N'HD001     ', CAST(N'2023-05-20' AS Date), N'NV001     ', N'KH001     ')
INSERT [HoaDon] ([maHoaDon], [ngayLapHD], [maNhanVien], [maKhachHang]) VALUES (N'HD002     ', CAST(N'2023-06-10' AS Date), N'NV002     ', N'KH002     ')
GO
INSERT [KhachHang] ([maKhachHang], [hasTheThanhVien], [tenKhachHang], [tuoi], [soDienThoai]) VALUES (N'KH001     ', 1, N'Nguyen Van C', 35, N'0123456789')
INSERT [KhachHang] ([maKhachHang], [hasTheThanhVien], [tenKhachHang], [tuoi], [soDienThoai]) VALUES (N'KH002     ', 0, N'Tran Thi D', 40, N'0987654321')
GO
INSERT [LoaiPhim] ([maLoaiPhim], [tenLoaiPhim], [moTa]) VALUES (N'LP001     ', N'Hành d?ng', N'Phim có nhi?u c?nh hành d?ng gay c?n')
INSERT [LoaiPhim] ([maLoaiPhim], [tenLoaiPhim], [moTa]) VALUES (N'LP002     ', N'Phiêu luu', N'Phim mang d?n nh?ng tr?i nghi?m phiêu luu d?y thú v?')
GO
INSERT [NhanVien] ([maNhanVien], [ngayVaoLam], [luong], [tenNhanVien], [tuoi], [soDienThoai]) VALUES (N'NV001     ', CAST(N'2023-05-15' AS Date), 5000000.0000, N'Nguyen Van A', 30, N'0123456789')
INSERT [NhanVien] ([maNhanVien], [ngayVaoLam], [luong], [tenNhanVien], [tuoi], [soDienThoai]) VALUES (N'NV002     ', CAST(N'2022-10-20' AS Date), 6000000.0000, N'Tran Thi B', 25, N'0987654321')
GO
INSERT [Phim] ([maPhim], [tenPhim], [ngayKhoiChieu], [thoiLuong], [ngonNgu], [gioiHanDoTuoi], [trangThai], [giaTien], [maLoaiPhim]) VALUES (N'PH001     ', N'Avengers: Endgame', CAST(N'2022-12-31' AS Date), 180, N'Tieng Anh           ', 13, 1, 100000.0000, N'LP001     ')
INSERT [Phim] ([maPhim], [tenPhim], [ngayKhoiChieu], [thoiLuong], [ngonNgu], [gioiHanDoTuoi], [trangThai], [giaTien], [maLoaiPhim]) VALUES (N'PH002     ', N'Spider-Man: Far From Home', CAST(N'2023-01-01' AS Date), 150, N'Tieng Anh           ', 13, 1, 80000.0000, N'LP002     ')
GO
INSERT [Phong] ([maPhong], [soLuongGhe], [tenPhong]) VALUES (N'P001      ', 100, N'Phòng 1   ')
INSERT [Phong] ([maPhong], [soLuongGhe], [tenPhong]) VALUES (N'P002      ', 80, N'Phòng 2   ')
GO
SET IDENTITY_INSERT [TaiKhoan] ON 

INSERT [TaiKhoan] ([id], [taiKhoan], [matKhau], [ngayTao], [isNhanVien]) VALUES (1, N'NV001     ', N'password001    ', CAST(N'2023-01-10' AS Date), 1)
INSERT [TaiKhoan] ([id], [taiKhoan], [matKhau], [ngayTao], [isNhanVien]) VALUES (2, N'NV002     ', N'password002    ', CAST(N'2023-02-15' AS Date), 1)
SET IDENTITY_INSERT [TaiKhoan] OFF
GO
INSERT [TheThanhVien] ([maTTV], [ngayDangky], [loai], [diemTichLuy], [maKhachHang]) VALUES (N'TTV001    ', CAST(N'2022-12-01' AS Date), N'VIP                 ', 500, N'KH001     ')
INSERT [TheThanhVien] ([maTTV], [ngayDangky], [loai], [diemTichLuy], [maKhachHang]) VALUES (N'TTV002    ', CAST(N'2023-01-20' AS Date), N'Standard            ', 200, N'KH002     ')
GO
INSERT [Ve] ([maVe], [moTa], [giaTien], [maPhim], [maGhe]) VALUES (N'VE001     ', N'Ve VIP', 200000.0000, N'PH001     ', N'GH001     ')
INSERT [Ve] ([maVe], [moTa], [giaTien], [maPhim], [maGhe]) VALUES (N'VE002     ', N'Ve thuong', 150000.0000, N'PH002     ', N'GH002     ')
GO
ALTER TABLE [ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [ChiTietHoaDon_HoaDon_FK] FOREIGN KEY([maHoaDon])
REFERENCES [HoaDon] ([maHoaDon])
GO
ALTER TABLE [ChiTietHoaDon] CHECK CONSTRAINT [ChiTietHoaDon_HoaDon_FK]
GO
ALTER TABLE [ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [ChiTietHoaDon_Ve_FK] FOREIGN KEY([maVe])
REFERENCES [Ve] ([maVe])
GO
ALTER TABLE [ChiTietHoaDon] CHECK CONSTRAINT [ChiTietHoaDon_Ve_FK]
GO
ALTER TABLE [ChiTietPhim]  WITH CHECK ADD  CONSTRAINT [ChiTietPhim_Phim_FK] FOREIGN KEY([maPhim])
REFERENCES [Phim] ([maPhim])
GO
ALTER TABLE [ChiTietPhim] CHECK CONSTRAINT [ChiTietPhim_Phim_FK]
GO
ALTER TABLE [ChiTietPhim]  WITH CHECK ADD  CONSTRAINT [ChiTietPhim_Phong_FK] FOREIGN KEY([maPhong])
REFERENCES [Phong] ([maPhong])
GO
ALTER TABLE [ChiTietPhim] CHECK CONSTRAINT [ChiTietPhim_Phong_FK]
GO
ALTER TABLE [Ghe]  WITH CHECK ADD  CONSTRAINT [Ghe_Phong_FK] FOREIGN KEY([maPhong])
REFERENCES [Phong] ([maPhong])
GO
ALTER TABLE [Ghe] CHECK CONSTRAINT [Ghe_Phong_FK]
GO
ALTER TABLE [HoaDon]  WITH CHECK ADD  CONSTRAINT [HoaDon_KhachHang_FK] FOREIGN KEY([maKhachHang])
REFERENCES [KhachHang] ([maKhachHang])
GO
ALTER TABLE [HoaDon] CHECK CONSTRAINT [HoaDon_KhachHang_FK]
GO
ALTER TABLE [HoaDon]  WITH CHECK ADD  CONSTRAINT [HoaDon_NhanVien_FK] FOREIGN KEY([maNhanVien])
REFERENCES [NhanVien] ([maNhanVien])
GO
ALTER TABLE [HoaDon] CHECK CONSTRAINT [HoaDon_NhanVien_FK]
GO
ALTER TABLE [Phim]  WITH CHECK ADD  CONSTRAINT [Phim_LoaiPhim_FK] FOREIGN KEY([maLoaiPhim])
REFERENCES [LoaiPhim] ([maLoaiPhim])
GO
ALTER TABLE [Phim] CHECK CONSTRAINT [Phim_LoaiPhim_FK]
GO
ALTER TABLE [TaiKhoan]  WITH CHECK ADD  CONSTRAINT [TaiKhoan_NhanVien_FK] FOREIGN KEY([taiKhoan])
REFERENCES [NhanVien] ([maNhanVien])
GO
ALTER TABLE [TaiKhoan] CHECK CONSTRAINT [TaiKhoan_NhanVien_FK]
GO
ALTER TABLE [TheThanhVien]  WITH CHECK ADD  CONSTRAINT [TheThanhVien_KhachHang_FK] FOREIGN KEY([maKhachHang])
REFERENCES [KhachHang] ([maKhachHang])
GO
ALTER TABLE [TheThanhVien] CHECK CONSTRAINT [TheThanhVien_KhachHang_FK]
GO
ALTER TABLE [Ve]  WITH CHECK ADD  CONSTRAINT [Ve_Ghe_Fk] FOREIGN KEY([maGhe])
REFERENCES [Ghe] ([maGhe])
GO
ALTER TABLE [Ve] CHECK CONSTRAINT [Ve_Ghe_Fk]
GO
ALTER TABLE [Ve]  WITH CHECK ADD  CONSTRAINT [Ve_Phim_FK] FOREIGN KEY([maPhim])
REFERENCES [Phim] ([maPhim])
GO
ALTER TABLE [Ve] CHECK CONSTRAINT [Ve_Phim_FK]
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanVe] SET  READ_WRITE 
GO
