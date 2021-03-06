USE [master]
GO
/****** Object:  Database [QLBH]    Script Date: 05/25/2018 18:08:57 ******/
CREATE DATABASE [QLBH] ON  PRIMARY 
( NAME = N'QLBH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QLBH.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLBH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QLBH_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLBH] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBH] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLBH] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLBH] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLBH] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLBH] SET ARITHABORT OFF
GO
ALTER DATABASE [QLBH] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QLBH] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLBH] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLBH] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLBH] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLBH] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLBH] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLBH] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLBH] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLBH] SET  DISABLE_BROKER
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLBH] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLBH] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLBH] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLBH] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLBH] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLBH] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLBH] SET  READ_WRITE
GO
ALTER DATABASE [QLBH] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QLBH] SET  MULTI_USER
GO
ALTER DATABASE [QLBH] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLBH] SET DB_CHAINING OFF
GO
USE [QLBH]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 05/25/2018 18:08:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
	[ThongTin] [nvarchar](250) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (1, N'SamSung', N'SamSung@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (2, N'Apple', N'Apple_pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (3, N'Asus', N'Asus_pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (5, N'Vivo', N'Vivo_pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (6, N'Huawei', N'Huawei_pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (7, N'HTC', N'Htc_pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (8, N'Wiko', N'Wiko_pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (9, N'Sony', N'Sony_pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (10, N'Xiaomi', N'Xiaomi_pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (11, N'OPPO', N'Oppo_pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (12, N'Nokia', N'Nokia_pro@gmail.com')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 05/25/2018 18:08:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NOT NULL,
	[SoDienThoai] [varchar](12) NULL,
	[Fax] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (1, N'Japan', N'Asia/Japan', N'japan@gmail.com', N'01289424788', N'0777883')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (2, N'Korea', N'Asia/Korea', N'korea@gmail.com', N'01234567899', N'0999665')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (3, N'United Kingdom', N'Eu/Uk', N'uk@gmail.com', N'01236547577', N'03331558')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (4, N'United States', N'America/Us', N'us@gmail.com', N'01205223403', N'0111331')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 05/25/2018 18:08:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[UuDai] [int] NULL,
 CONSTRAINT [PK_LoaiThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] ON
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'Khách Hàng', NULL)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'Nhân Viên Kho', NULL)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (3, N'Nhân Viên Giao Hàng', NULL)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (4, N'Admin', NULL)
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] OFF
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 05/25/2018 18:08:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai]) VALUES (1, N'SmartPhone')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai]) VALUES (2, N'Điện Thoại Bàn Phím')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai]) VALUES (4, N'Phụ Kiện')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 05/25/2018 18:08:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(100000,1) NOT NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Hoten] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[MaLoaiTV] [int] NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] ON
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [Hoten], [GioiTinh], [DiaChi], [SoDienThoai], [Email], [MaLoaiTV]) VALUES (100001, N'Storm.Binne', N'truongson1998', N'Nguyễn Phan Trường Sơn', NULL, N'Điện Bàn,Quảng Namm', N'01205223403', N'truongson679@gmail.com', 1)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [Hoten], [GioiTinh], [DiaChi], [SoDienThoai], [Email], [MaLoaiTV]) VALUES (100002, N'dsds', N'123456', N'Nguyễnn Phan Trường Sơn', N'Nam', N'Điện Bàn,Quảng Nam', N'01205223402', N'trson@gmail.com', 1)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [Hoten], [GioiTinh], [DiaChi], [SoDienThoai], [Email], [MaLoaiTV]) VALUES (100003, N'Ro7', N'123456', N'Anh Tuấn', N'Nữ', N'Quảng Nam', N'01205223403', N'22@gmail.com', 4)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [Hoten], [GioiTinh], [DiaChi], [SoDienThoai], [Email], [MaLoaiTV]) VALUES (100004, N'NVGH1', N'123456', N'NVGH1', N'Nam', N'Quảng Nam', N'01205223403', N'Transporter@gmail.com', 3)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [Hoten], [GioiTinh], [DiaChi], [SoDienThoai], [Email], [MaLoaiTV]) VALUES (100005, N'NVGH2', N'123456', N'NVGH2', N'Nữ', N'Đà Nẵng', N'0905901351', N'Transporter2@gmail.com', 3)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [Hoten], [GioiTinh], [DiaChi], [SoDienThoai], [Email], [MaLoaiTV]) VALUES (100006, N'NVKho', N'123456', N'NVKho', N'Nữ', N'Đà nẵng', N'0123456789', N'Kho@gmail.com', 2)
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
/****** Object:  Table [dbo].[SanPham]    Script Date: 05/25/2018 18:08:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](250) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[NgayCapNhat] [datetime] NULL,
	[CauHinh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[TinhTrang] [varchar](50) NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[HinhAnh1] [nvarchar](max) NULL,
	[HinhAnh2] [nvarchar](max) NULL,
	[HinhAnh3] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (1, N'IphoneX', CAST(29990000 AS Decimal(18, 0)), CAST(0x0000A78A00000000 AS DateTime), N'<div class="fs-tsbox">
<p>Cấu h&igrave;nh sản phẩm:</p>

<ul>
	<li>M&agrave;n H&igrave;nh:&nbsp;6.2 inch</li>
	<li>Camera:&nbsp;Dual 12.0 MP/ 8.0 MP</li>
	<li>Pin:&nbsp;3600 mAh</li>
	<li>Ram:&nbsp;6 GB</li>
	<li>CPU:&nbsp;Exynos 9810</li>
	<li>HĐH:&nbsp;Android 8.0</li>
</ul>
</div>
', NULL, N'/AnhProject/images/ipx.jpg', 197, N'99%', 1, 2, 1, N'/AnhProject/images/iphonex3.jpg', N'/AnhProject/images/iphonex1.jpg', N'/AnhProject/images/iphonex2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (2, N'Iphone 8 Plus', CAST(23990000 AS Decimal(18, 0)), CAST(0x0000A78800000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/ip8p.jpg', 152, N'New', 4, 2, 1, N'/AnhProject/images/iphone8+1.jpg', N'iphone8+2.jpg', N'/AnhProject/images/iphone8+3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (3, N'Iphone 8', CAST(20790000 AS Decimal(18, 0)), CAST(0x0000A74B00000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/iphone8.png', 61, N'New', 3, 2, 1, N'/AnhProject/images/iphone81.jpg', N'/AnhProject/images/iphone82.jpg', N'/AnhProject/images/iphone83.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (4, N'Iphone 7 Plus', CAST(19990000 AS Decimal(18, 0)), CAST(0x0000A7C500000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/ip7p.jpg', 200, N'New', 2, 2, 1, N'/AnhProject/images/iphone7+1.jpg', N'/AnhProject/images/iphone7+2.jpg', N'/AnhProject/images/iphone7+3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (5, N'Iphone 7', CAST(15999000 AS Decimal(18, 0)), CAST(0x0000A6EE00000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/iphone7.png', 141, N'New', 1, 2, 1, N'/AnhProject/images/iphone72.png', N'/AnhProject/images/iphone71.jpg', N'/AnhProject/images/iphone73.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (6, N'Iphone 6s Plus', CAST(13999000 AS Decimal(18, 0)), CAST(0x0000A76A00000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/iphone6s.png', 125, N'New', 1, 2, 1, N'/AnhProject/images/iphone6s1.jpg', N'/AnhProject/images/iphone6s2.jpg', N'/AnhProject/images/iphone6s3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (7, N'SamSung Galaxy S9 Plus', CAST(24990000 AS Decimal(18, 0)), CAST(0x0000A76A00000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/s9pp.jpg', 155, N'New', 1, 1, 1, N'/AnhProject/images/ssgalaxys9+1.jpg', N'/AnhProject/images/ssgalaxys9+2.jpg', N'/AnhProject/images/ssgalaxys9+3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (8, N'SamSung Galaxy Note 8', CAST(22490000 AS Decimal(18, 0)), CAST(0x0000A76A00000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/ssgalaxynote8.png', 147, N'New', 4, 1, 1, N'/AnhProject/images/ssgalaxynote81.jpg', N'/AnhProject/images/ssgalaxynote82.jpg', N'/AnhProject/images/ssgalaxynote83.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (10, N'SamSung Galaxy S9', CAST(19990000 AS Decimal(18, 0)), CAST(0x0000A76A00000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/ssgalaxys9.png', 198, N'99%', 4, 1, 1, N'/AnhProject/images/ssgalaxys91.jpg', N'/AnhProject/images/ssgalaxys92.jpg', N'/AnhProject/images/ssgalaxys93.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (11, N'SamSung Galaxy S8 Plus', CAST(17990000 AS Decimal(18, 0)), CAST(0x0000A76A00000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/s8pp.jpg', 200, N'99%', 2, 1, 1, N'/AnhProject/images/ssgalaxys8+1.jpg', N'/AnhProject/images/ssgalaxys8+2.jpg', N'/AnhProject/images/ssgalaxys8+3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (12, N'SamSung Galaxy A8 Plus ', CAST(13490000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/A8p.jpg', NULL, N'99%', 2, 1, 1, N'/AnhProject/images/ssgalaxya81.jpg', N'/AnhProject/images/ssgalaxya82.jpg', N'/AnhProject/images/ssgalaxya83.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (13, N'SamSung Galaxy A8', CAST(10990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/A8.jpg', 200, N'99%', 2, 1, 1, N'/AnhProject/images/ssgalaxya81.jpg', N'/AnhProject/images/ssgalaxya82.jpg', N'/AnhProject/images/ssgalaxya83.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (14, N'SamSung Galaxy A7', CAST(7990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/ssgalaxya7.png', 200, N'99%', 2, 1, 1, N'/AnhProject/images/ssgalaxya71.jpg', N'/AnhProject/images/ssgalaxya72.jpg', N'/AnhProject/images/ssgalaxya73.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (15, N'SamSung Galaxy S8', CAST(15990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/ssgalaxys8.png', 200, N'99%', 2, 1, 1, N'/AnhProject/images/ssgalaxys81.jpg', N'/AnhProject/images/ssgalaxys82.jpg', N'/AnhProject/images/ssgalaxys83.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (16, N'SamSung Galaxy J7 Pro', CAST(6090000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/J7pro.png', 200, N'New', 2, 1, 1, N'/AnhProject/images/J7pro1.jpg', N'/AnhProject/images/J7pro2.jpg', N'/AnhProject/images/J7pro3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (17, N'SamSung Galaxy J7 Prime', CAST(4990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/j7prime.jpg', 200, N'New', 1, 1, 1, N'/AnhProject/images/j7prime1.jpg', N'/AnhProject/images/j7prime2.jpg', N'/AnhProject/images/j7prime3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (18, N'SamSung Galaxy J3 Pro', CAST(3990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/j3pro.jpg', 199, N'New', 1, 1, 1, N'/AnhProject/images/j3pro1.jpg', N'/AnhProject/images/j3pro2.jpg', N'/AnhProject/images/j3pro3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (19, N'SamSung Galaxy J2 Pro', CAST(3290000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/j2.png', 240, N'New', 1, 1, 1, N'/AnhProject/images/j21.jpg', N'/AnhProject/images/j22.jpg', N'/AnhProject/images/j23.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (20, N'Asus Zenfone Max Plus M1', CAST(5490000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/asusm1.png', 200, N'New', 1, 3, 1, N'/AnhProject/images/asusm11.jpg', N'/AnhProject/images/asusm12.jpg', N'/AnhProject/images/asusm13.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (21, N'Asus Zenfone 4 Max Pro', CAST(4690000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/4max.png', 200, N'New', 1, 3, 1, N'/AnhProject/images/4max1.jpg', N'/AnhProject/images/4max2.jpg', N'/AnhProject/images/4max3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (22, N'Asus Zenfone 4 Max', CAST(3490000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/4pro.jpg', 200, N'New', 3, 3, 1, N'/AnhProject/images/4pro1.jpg', N'/AnhProject/images/4pro2.jpg', N'/AnhProject/images/4pro3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (25, N'Vivo V7 Plus', CAST(7990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/v4.jpg', 199, N'New', 3, 5, 1, N'/AnhProject/images/v771.jpg', N'/AnhProject/images/v772.jpg', N'/AnhProject/images/v773.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (26, N'Vivo V9', CAST(7990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/vivov9.png', 199, N'New', 3, 5, 1, N'/AnhProject/images/vivov91.jpg', N'/AnhProject/images/vivov92.jpg', N'/AnhProject/images/vivov93.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (27, N'Vivo V7', CAST(6990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/v777.jpg', 199, N'New', 3, 5, 1, N'/AnhProject/images/vivov71.jpg', N'/AnhProject/images/vivov72.jpg', N'/AnhProject/images/vivov73.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (28, N'Vivo V5', CAST(5990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/vivov5.jpg', 200, N'New', 3, 5, 1, N'/AnhProject/images/vivov5.jpg', N'/AnhProject/images/vivov51.jpg', N'/AnhProject/images/vivov52.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (29, N'Vivo Y69', CAST(5490000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/y69.png', 200, N'New', 3, 5, 1, N'/AnhProject/images/y691.jpg', N'/AnhProject/images/y692.jpg', N'/AnhProject/images/y693.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (30, N'Vivo V5S', CAST(6990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/vivo5ss.jpg', 200, N'New', 3, 5, 1, N'/AnhProject/images/vivov5s1.jpg', N'/AnhProject/images/vivov5s2.jpg', N'/AnhProject/images/vivov5s3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (31, N'Huawei Nova 3e', CAST(6990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/huawei-nova3e.jpg', 198, N'New', 3, 6, 1, N'/AnhProject/images/hw3e1.jpg', N'/AnhProject/images/hw3e2.jpg', N'/AnhProject/images/hw3e3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (32, N'Huawei Nova 2i', CAST(5490000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/hw2i.jpg', 200, N'New', 3, 6, 1, N'/AnhProject/images/hw2i.jpg', N'/AnhProject/images/hw2i.jpg', N'/AnhProject/images/hw2i.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (33, N'Huawei Y7 Prime', CAST(4290000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/hwy7pr.png', 200, N'New', 4, 6, 1, N'/AnhProject/images/hwy7pr1.jpg', N'/AnhProject/images/hwy7pr2.jpg', N'/AnhProject/images/hwy7pr3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (34, N'Huawei Y7 Pro 2018', CAST(3990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/hwy7pro.png', 200, N'New', 4, 6, 1, N'/AnhProject/images/hwy7pro1.jpg', N'/AnhProject/images/hwy7pro2.jpg', N'/AnhProject/images/hwy7pro3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (37, N'Wiko View Prime', CAST(5799000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/wikoPrime.png', 200, N'New', 4, 8, 1, N'wikoPrime1.jpg', N'/AnhProject/images/wikoPrime2.jpg', N'/AnhProject/images/wikoPrime3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (38, N'Wiko View XL', CAST(3999000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/wikoxl.png', 200, N'New', 4, 8, 1, N'/AnhProject/images/wikoxl1.jpg', N'/AnhProject/images/wikoxl2.jpg', N'/AnhProject/images/wikoxl3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (39, N'Wiko U Pulse', CAST(2999000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/wikou.jpg', 200, N'New', 4, 8, 1, N'/AnhProject/images/wikou.jpg', N'/AnhProject/images/wikou1.jpg', N'/AnhProject/images/wikou2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (40, N'Wiko Robby 2017', CAST(2599000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/wikorobby.png', 200, N'New', 4, 8, 1, N'/AnhProject/images/wikorobby1.jpg', N'/AnhProject/images/wikorobby2.jpg', N'/AnhProject/images/wikorobby3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (41, N'Sony Xperia XZ1', CAST(13990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/XZ1.png', 200, N'New', 4, 9, 1, N'/AnhProject/images/XZ11.jpg', N'/AnhProject/images/XZ12.jpg', N'/AnhProject/images/XZ13.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (42, N'Sony Xperia XA1 Ultra', CAST(7990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/XA1.png', 200, N'New', 4, 9, 1, N'/AnhProject/images/XA11.jpg', N'/AnhProject/images/XA12.jpg', N'/AnhProject/images/XA13.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (43, N'Sony Xperia XA1 Plus', CAST(6190000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/XA1P.png', 200, N'New', 4, 9, 1, N'/AnhProject/images/XA1P1.jpg', N'/AnhProject/images/XA1P2.jpg', N'/AnhProject/images/XA1P3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (44, N'Sony Xperia L2', CAST(5490000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/L2.png', 200, N'New', 4, 9, 1, N'/AnhProject/images/L21.jpg', N'/AnhProject/images/L22.jpg', N'/AnhProject/images/L23.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (45, N'Sony Xperia L1 Dual', CAST(3590000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/L1dual.jpg', 200, N'New', 4, 9, 1, N'/AnhProject/images/L1dual1.jpg', N'/AnhProject/images/L1dual2.jpg', N'/AnhProject/images/L1dual3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (46, N'Sony Xperia XZ Premium', CAST(17990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/XZpremium.png', 200, N'99%', 1, 9, 1, N'/AnhProject/images/XZpremium1.jpg', N'/AnhProject/images/XZpremium2.jpg', N'/AnhProject/images/XZpremium3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (47, N'Sony Xperia XZs', CAST(9990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/XZs.png', 200, N'99%', 1, 9, 1, N'/AnhProject/images/XZs1.jpg', N'/AnhProject/images/XZs2.jpg', N'/AnhProject/images/XZs3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (48, N'Sony Xperia X', CAST(7990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/xzz.png', 200, N'99%', 1, 9, 1, N'/AnhProject/images/xzz1.jpg', N'/AnhProject/images/xzz2.jpg', N'/AnhProject/images/xzz1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (49, N'Xiaomi Mi A1', CAST(5490000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/A1.png', 200, N'99%', 1, 10, 1, N'/AnhProject/images/A1.png', N'/AnhProject/images/A11.png', N'/AnhProject/images/A1.png')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (50, N'Xiaomi Redmi Note 5', CAST(4799000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/redmino5.png', 200, N'99%', 1, 10, 1, N'/AnhProject/images/redmino5.png', N'/AnhProject/images/redmino5.png', N'/AnhProject/images/redmino5.png')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (51, N'Xiaomi Redmi Note 4', CAST(4290000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/note4.jpg', 200, N'99%', 2, 10, 1, N'/AnhProject/images/note41.jpg', N'/AnhProject/images/note42.jpg', N'/AnhProject/images/note43.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (52, N'Xiaomi Redmi 5 Plus', CAST(3999000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/mi5plus.png', 200, N'99%', 2, 10, 1, N'/AnhProject/images/mi5plus1.jpg', N'/AnhProject/images/mi5plus2.jpg', N'/AnhProject/images/mi5plus3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (53, N'Xiaomi Redmi Note 5a Prime', CAST(3690000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/mi5a.png', 200, N'99%', 2, 10, 1, N'/AnhProject/images/mi5a.png', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (54, N'Xiaomi Redmi 4X', CAST(3690000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/mi4x.jpg', 200, N'99%', 2, 10, 1, N'/AnhProject/images/mi4x1.jpg', N'/AnhProject/images/mi4x.jpg', N'/AnhProject/images/mi4x2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (55, N'OPPO F5', CAST(8990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/oppof5.png', 200, N'99%', 2, 11, 1, N'/AnhProject/images/oppof51.jpg', N'/AnhProject/images/oppof52.jpg', N'/AnhProject/images/oppof53.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (56, N'OPPO F1s 2017', CAST(4990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/oppof1s.jpg', 200, N'99%', 3, 11, 1, N'/AnhProject/images/oppof1s.jpg', N'/AnhProject/images/oppof1s1.jpg', N'/AnhProject/images/oppof1s2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (57, N'OPPO F3', CAST(4990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/oppof3.jpg', 200, N'99%', 3, 11, 1, N'/AnhProject/images/oppof31.jpg', N'/AnhProject/images/oppof32.jpg', N'/AnhProject/images/oppof33.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (58, N'OPPO A83', CAST(4990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/a83.png', 200, N'99%', 3, 11, 1, N'/AnhProject/images/a831.jpg', N'/AnhProject/images/a832.jpg', N'/AnhProject/images/a833.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (59, N'OPPO F1 Plus', CAST(4790000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/f1plus.jpg', 200, N'99%', 3, 11, 1, N'/AnhProject/images/f1plus1.jpg', N'/AnhProject/images/f1plus2.jpg', N'/AnhProject/images/f1plus3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (60, N'OPPP A71', CAST(4190000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/A71.png', 200, N'99%', 3, 11, 1, N'/AnhProject/images/A711.jpg', N'/AnhProject/images/A712.jpg', N'/AnhProject/images/A713.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (61, N'Nokia 6', CAST(5590000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/nokia6.png', 200, N'99%', 3, 12, 1, N'/AnhProject/images/nokia61.jpg', N'/AnhProject/images/nokia62.jpg', N'/AnhProject/images/nokia63.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (62, N'Nokia 5', CAST(4259000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/nokia5.png', 200, N'99%', 4, 12, 1, N'/AnhProject/images/nokia51.jpg', N'/AnhProject/images/nokia52.jpg', N'/AnhProject/images/nokia53.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (63, N'Nokia 3', CAST(2999000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/nokia3.png', 200, N'99%', 4, 12, 1, N'/AnhProject/images/nokia31.jpg', N'/AnhProject/images/nokia32.jpg', N'/AnhProject/images/nokia33.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (64, N'Nokia 2', CAST(2389000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/nokia2.png', 200, N'99%', 4, 12, 1, N'/AnhProject/images/nokia21.jpg', N'/AnhProject/images/nokia22.jpg', N'/AnhProject/images/nokia23.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (65, N'Nokia 1', CAST(1890000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/nokia1.png', 200, N'New', 4, 12, 1, N'/AnhProject/images/nokia11.png', N'/AnhProject/images/nokia12.jpg', N'/AnhProject/images/nokia13.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (66, N'Nokia 8', CAST(7990000 AS Decimal(18, 0)), CAST(0x0000A8F700000000 AS DateTime), N'<div class="fs-tsbox"> <p class="fs-tstit">Cấu hình sản phẩm:</p> <ul> <li><label>Màn Hình:</label>&nbsp;6.2 inch</li> <li><label>Camera:</label>&nbsp;Dual 12.0 MP/ 8.0 MP</li> <li><label>Pin:</label>&nbsp;3500 mAh</li> <li><label>Ram:</label>&nbsp;6 GB</li> <li><label>CPU:</label>&nbsp;Exynos 9810</li> <li><label>HĐH:</label>&nbsp;Android 8.0</li> </ul> </div>', NULL, N'/AnhProject/images/nokia8.png', 200, N'New', 4, 12, 1, N'/AnhProject/images/nokia81.jpg', N'/AnhProject/images/nokia82.jpg', N'/AnhProject/images/nokia83.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (72, N'LG G8', CAST(20000000 AS Decimal(18, 0)), CAST(0x0000A8DB00000000 AS DateTime), NULL, NULL, N'/AnhProject/images/chelsea_shamsi_emblem_mata_torres_lampard_azar_ramirez_74106_3840x2400.jpg', 50, N'M?i', 1, 1, 1, N'/AnhProject/images/chelsea_shamsi_emblem_mata_torres_lampard_azar_ramirez_74106_3840x2400.jpg', N'/AnhProject/images/chelsea_shamsi_emblem_mata_torres_lampard_azar_ramirez_74106_3840x2400.jpg', N'/AnhProject/images/chelsea_shamsi_emblem_mata_torres_lampard_azar_ramirez_74106_3840x2400.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (73, N'LG G9', CAST(800000 AS Decimal(18, 0)), CAST(0x0000A8E200000000 AS DateTime), NULL, NULL, N'/AnhProject/images/david_luiz_chelsea_footballer_football_sport_27768_3840x2400.jpg', 23, N'New', 1, 1, 1, N'/AnhProject/images/david_luiz_chelsea_footballer_football_sport_27768_3840x2400.jpg', N'/AnhProject/images/david_luiz_chelsea_footballer_football_sport_27768_3840x2400.jpg', N'/AnhProject/images/david_luiz_chelsea_footballer_football_sport_27768_3840x2400.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [TinhTrang], [MaNCC], [MaNSX], [MaLoaiSP], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (79, NULL, NULL, NULL, N'<p>son</p>
', NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 05/25/2018 18:08:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap]) VALUES (1, 1, CAST(0x0000A8F700000000 AS DateTime))
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap]) VALUES (2, 2, CAST(0x0000A8F700000000 AS DateTime))
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap]) VALUES (3, 4, CAST(0x0000A8E100000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 05/25/2018 18:08:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungBL] [nvarchar](max) NULL,
	[MaThanhVien] [int] NULL,
	[MaSP] [int] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhapp]    Script Date: 05/25/2018 18:08:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhapp](
	[MaPN] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[DonGiaNhap] [decimal](18, 0) NULL,
	[SoLuongNhap] [int] NULL,
 CONSTRAINT [PK_ChiTietPhieuNhapp] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietPhieuNhapp] ([MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (1, 2, CAST(100000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhapp] ([MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (1, 3, CAST(1333 AS Decimal(18, 0)), 12)
INSERT [dbo].[ChiTietPhieuNhapp] ([MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 4, CAST(10000 AS Decimal(18, 0)), 8)
INSERT [dbo].[ChiTietPhieuNhapp] ([MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 6, CAST(50000 AS Decimal(18, 0)), 50)
INSERT [dbo].[ChiTietPhieuNhapp] ([MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 2, CAST(10000000 AS Decimal(18, 0)), 50)
INSERT [dbo].[ChiTietPhieuNhapp] ([MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 6, CAST(70000000 AS Decimal(18, 0)), 20)
INSERT [dbo].[ChiTietPhieuNhapp] ([MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 7, CAST(50000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhapp] ([MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 19, CAST(60000000 AS Decimal(18, 0)), 40)
/****** Object:  Table [dbo].[KhachHang]    Script Date: 05/25/2018 18:08:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[MaThanhVien] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (30, N'Nguyễn Phan Trường Sơn', N'Điện Bàn,Quảng Nam', NULL, N'01205223403', 100001)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (31, N'Nguyễn Phan Trường Sơn', N'Điện Bàn,Quảng Nam', NULL, N'01205223403', 100001)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (32, N'son', NULL, N'trson@gmail.com', N'01205223402', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (33, N'Nguyễn Phan Trườngx', N'Điện Bàn,Quảng Nam', NULL, N'01205223403', 100001)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (34, N'Nguyễn Phan Trường Sơn', N'Điện Bàn,Quảng Nam', NULL, N'01205223403', 100001)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (35, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (36, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (37, N'son', N'h', N'truongson679@gmail.com', N'01205223402', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (38, N'son11', N'20', N'trsson@gmail.com', N'01205223404', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (39, N'son11đ', N'2', N'Sto@gmail.com', N'01205223404', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (41, N'son', N'đd', N'trsson@gmail.com', N'01205223402', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (42, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (43, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (44, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (45, N'son11', N'qqqq', N'trson@gmail.com', N'01205223402', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (46, N'sonne', N'quangnam', N'truongson679@gmail.com', N'0905901351', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (47, N'NVGH1', N'Quảng Nam', NULL, N'01205223403', 100004)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (48, N'xxx', N'xxxx', N'xxxx', N'01205223403', NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 05/25/2018 18:08:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrang] [int] NULL,
	[MaKH] [int] NULL,
	[UuDai] [int] NULL,
	[NVGiaoHang] [nvarchar](50) NULL,
	[TinhTrangGH] [int] NULL,
	[TongTien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrang], [MaKH], [UuDai], [NVGiaoHang], [TinhTrangGH], [TongTien]) VALUES (46, CAST(0x0000A8CB00CC30A8 AS DateTime), 1, 44, NULL, N'NVGH1', 2, CAST(22490000 AS Decimal(18, 0)))
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrang], [MaKH], [UuDai], [NVGiaoHang], [TinhTrangGH], [TongTien]) VALUES (48, CAST(0x0000A8CB00CE9460 AS DateTime), 0, 46, NULL, NULL, NULL, CAST(22970000 AS Decimal(18, 0)))
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrang], [MaKH], [UuDai], [NVGiaoHang], [TinhTrangGH], [TongTien]) VALUES (49, CAST(0x0000A8D60101EB2C AS DateTime), 2, 47, NULL, NULL, NULL, CAST(92760000 AS Decimal(18, 0)))
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrang], [MaKH], [UuDai], [NVGiaoHang], [TinhTrangGH], [TongTien]) VALUES (50, CAST(0x0000A8E4014E9ABF AS DateTime), 1, 48, 0, NULL, 0, CAST(29990000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 05/25/2018 18:08:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaDDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietDonDatHang_1] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (46, 8, N'SamSung Galaxy Note 8', 1, CAST(22490000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (48, 25, N'Vivo V7 Plus', 1, CAST(7990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (48, 26, N'Vivo V9', 1, CAST(7990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (48, 27, N'Vivo V7', 1, CAST(6990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (49, 2, N'Iphone 8 Plus', 3, CAST(23990000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (49, 3, N'Iphone 8', 1, CAST(20790000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (50, 1, N'IphoneX', 1, CAST(29990000 AS Decimal(18, 0)))
/****** Object:  ForeignKey [FK_ThanhVien_LoaiThanhVien]    Script Date: 05/25/2018 18:08:58 ******/
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_LoaiThanhVien] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_LoaiThanhVien]
GO
/****** Object:  ForeignKey [FK_SanPham_LoaiSanPham]    Script Date: 05/25/2018 18:08:58 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
/****** Object:  ForeignKey [FK_SanPham_NhaCungCap]    Script Date: 05/25/2018 18:08:58 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
/****** Object:  ForeignKey [FK_SanPham_NhaSanXuat]    Script Date: 05/25/2018 18:08:58 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
/****** Object:  ForeignKey [FK_PhieuNhap_NhaCungCap]    Script Date: 05/25/2018 18:08:58 ******/
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
/****** Object:  ForeignKey [FK_BinhLuan_SanPham]    Script Date: 05/25/2018 18:08:58 ******/
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
/****** Object:  ForeignKey [FK_BinhLuan_ThanhVien]    Script Date: 05/25/2018 18:08:58 ******/
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_ThanhVien]
GO
/****** Object:  ForeignKey [FK_ChiTietPhieuNhapp_PhieuNhap]    Script Date: 05/25/2018 18:08:58 ******/
ALTER TABLE [dbo].[ChiTietPhieuNhapp]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhapp_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapp] CHECK CONSTRAINT [FK_ChiTietPhieuNhapp_PhieuNhap]
GO
/****** Object:  ForeignKey [FK_ChiTietPhieuNhapp_SanPham]    Script Date: 05/25/2018 18:08:58 ******/
ALTER TABLE [dbo].[ChiTietPhieuNhapp]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhapp_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapp] CHECK CONSTRAINT [FK_ChiTietPhieuNhapp_SanPham]
GO
/****** Object:  ForeignKey [FK_KhachHang_ThanhVien]    Script Date: 05/25/2018 18:08:58 ******/
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_ThanhVien]
GO
/****** Object:  ForeignKey [FK_DonDatHang_KhachHang]    Script Date: 05/25/2018 18:08:58 ******/
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
/****** Object:  ForeignKey [FK_ChiTietDonDatHang_DonDatHang]    Script Date: 05/25/2018 18:08:58 ******/
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
/****** Object:  ForeignKey [FK_ChiTietDonDatHang_SanPham1]    Script Date: 05/25/2018 18:08:58 ******/
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham1] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham1]
GO
