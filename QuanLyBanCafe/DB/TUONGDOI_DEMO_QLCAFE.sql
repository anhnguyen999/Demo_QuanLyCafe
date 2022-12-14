USE [master]
GO
/****** Object:  Database [Demo_QuanLyCafe]    Script Date: 13/10/2022 7:50:34 SA ******/
CREATE DATABASE [Demo_QuanLyCafe]
GO
USE [Demo_QuanLyCafe]
GO
/****** Object:  Table [dbo].[BanCafe]    Script Date: 13/10/2022 7:50:34 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanCafe](
	[MaSoBan] [int] IDENTITY(1,1) NOT NULL,
	[TenBan] [nvarchar](50) NULL,
 CONSTRAINT [PK_BanCafe] PRIMARY KEY CLUSTERED 
(
	[MaSoBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 13/10/2022 7:50:34 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaChiTietHD] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NULL,
	[MaMon] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 13/10/2022 7:50:34 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nchar](10) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 13/10/2022 7:50:34 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[Ngay] [datetime] NULL,
	[MaNhanVien] [int] NULL,
	[MaSoBan] [int] NULL,
	[TongTien] [float] NULL,
	[GiamGia] [float] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mon]    Script Date: 13/10/2022 7:50:34 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mon](
	[MaMon] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[MaDanhMuc] [int] NULL,
	[GiaTien] [float] NULL,
	[Hinh] [varchar](200) NULL,
 CONSTRAINT [PK_Mon] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 13/10/2022 7:50:34 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[MatKhau] [varchar](500) NULL,
	[TenDangNhap] [varchar](100) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BanCafe] ON 

INSERT [dbo].[BanCafe] ([MaSoBan], [TenBan]) VALUES (1, N'Bàn Gỗ')
INSERT [dbo].[BanCafe] ([MaSoBan], [TenBan]) VALUES (2, N'Bàn tre mây 1')
INSERT [dbo].[BanCafe] ([MaSoBan], [TenBan]) VALUES (3, N'Bàn Đá 1')
INSERT [dbo].[BanCafe] ([MaSoBan], [TenBan]) VALUES (4, N'Bàn Đá 2')
INSERT [dbo].[BanCafe] ([MaSoBan], [TenBan]) VALUES (5, N'Bàn Đá 3')
INSERT [dbo].[BanCafe] ([MaSoBan], [TenBan]) VALUES (6, N'Vườn Tre')
INSERT [dbo].[BanCafe] ([MaSoBan], [TenBan]) VALUES (7, N'Bàn Kính 1')
INSERT [dbo].[BanCafe] ([MaSoBan], [TenBan]) VALUES (8, N'Bàn Kính 2')
INSERT [dbo].[BanCafe] ([MaSoBan], [TenBan]) VALUES (9, N'Bàn mây 1')
INSERT [dbo].[BanCafe] ([MaSoBan], [TenBan]) VALUES (10, N'Bàn mây 2')
INSERT [dbo].[BanCafe] ([MaSoBan], [TenBan]) VALUES (11, N'Bàn mây 3')
INSERT [dbo].[BanCafe] ([MaSoBan], [TenBan]) VALUES (12, N'Bàn view Sông')
SET IDENTITY_INSERT [dbo].[BanCafe] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaMon], [SoLuong]) VALUES (27, 14, 3, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaMon], [SoLuong]) VALUES (28, 14, 4, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaMon], [SoLuong]) VALUES (29, 15, 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaMon], [SoLuong]) VALUES (30, 15, 4, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaMon], [SoLuong]) VALUES (31, 16, 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaMon], [SoLuong]) VALUES (32, 17, 4, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaMon], [SoLuong]) VALUES (33, 17, 3, 3)
INSERT [dbo].[ChiTietHoaDon] ([MaChiTietHD], [MaHD], [MaMon], [SoLuong]) VALUES (34, 17, 1, 3)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [Ten]) VALUES (1, N'Nước Uống ')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [Ten]) VALUES (2, N'Cafe      ')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [Ten]) VALUES (3, N'Sinh tố   ')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [Ngay], [MaNhanVien], [MaSoBan], [TongTien], [GiamGia]) VALUES (14, CAST(N'2022-10-11T13:14:16.497' AS DateTime), 7, 6, 54000000, 0)
INSERT [dbo].[HoaDon] ([MaHD], [Ngay], [MaNhanVien], [MaSoBan], [TongTien], [GiamGia]) VALUES (15, CAST(N'2022-10-11T13:17:26.653' AS DateTime), 7, 12, 11000000, 50)
INSERT [dbo].[HoaDon] ([MaHD], [Ngay], [MaNhanVien], [MaSoBan], [TongTien], [GiamGia]) VALUES (16, CAST(N'2022-10-12T07:52:20.973' AS DateTime), NULL, 10, 10000000, 0)
INSERT [dbo].[HoaDon] ([MaHD], [Ngay], [MaNhanVien], [MaSoBan], [TongTien], [GiamGia]) VALUES (17, CAST(N'2022-10-12T13:34:21.357' AS DateTime), NULL, 12, 126000000, 0)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[Mon] ON 

INSERT [dbo].[Mon] ([MaMon], [Ten], [MaDanhMuc], [GiaTien], [Hinh]) VALUES (1, N'Cafe đen', 2, 12000000, N'/Hinh/cfeden.jpg')
INSERT [dbo].[Mon] ([MaMon], [Ten], [MaDanhMuc], [GiaTien], [Hinh]) VALUES (3, N'Nước suối', 1, 10000000, N'/Hinh/nuocsuoi.jpg')
INSERT [dbo].[Mon] ([MaMon], [Ten], [MaDanhMuc], [GiaTien], [Hinh]) VALUES (4, N'Coca', 1, 12000000, N'/Hinh/coca.jpg')
INSERT [dbo].[Mon] ([MaMon], [Ten], [MaDanhMuc], [GiaTien], [Hinh]) VALUES (5, N'Sinh tố bơ', 3, 20000000, N'/Hinh/sinhtobo.jpg')
INSERT [dbo].[Mon] ([MaMon], [Ten], [MaDanhMuc], [GiaTien], [Hinh]) VALUES (7, N'cafe sua da 123', 1, 10000, N'//Hinh//cafesuada.jpg')
INSERT [dbo].[Mon] ([MaMon], [Ten], [MaDanhMuc], [GiaTien], [Hinh]) VALUES (8, N'yyyyy', 3, 888, N'//Hinh//sinhtobo - Copy.jpg')
INSERT [dbo].[Mon] ([MaMon], [Ten], [MaDanhMuc], [GiaTien], [Hinh]) VALUES (9, N'monmoi', 1, 9399393, N'//Hinh//cfeden.jpg')
INSERT [dbo].[Mon] ([MaMon], [Ten], [MaDanhMuc], [GiaTien], [Hinh]) VALUES (10, N'mon new', 1, 99999, N'//Hinh//default.jpg')
INSERT [dbo].[Mon] ([MaMon], [Ten], [MaDanhMuc], [GiaTien], [Hinh]) VALUES (11, N'RRR', 1, 33, N'//Hinh//cfesuada.jpg')
SET IDENTITY_INSERT [dbo].[Mon] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [MatKhau], [TenDangNhap]) VALUES (7, N'nguyễn đình ánh', N'$2a$11$AgeJVPABQ68m4XVHA7U9nuvspe.oCosh6jU21.ahUW7FvaonrG/su', N'dinhanh')
INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [MatKhau], [TenDangNhap]) VALUES (9, N'hoang van nam', N'$2a$11$5HS2BNNWRT/zZqir525LzetvXGbrqZhN1.B6zXqq9zax8ihi/pPD2', N'abc')
INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [MatKhau], [TenDangNhap]) VALUES (11, N'nguyen thi c', N'$2a$11$tl8hjOWFHtbV34n53rl0AOySyJW.BY.Bg9kooKZN8zV.3MUzxGzzS', N'muadong')
INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [MatKhau], [TenDangNhap]) VALUES (12, N'TRAN THI ABCDDDDDDDDD', N'$2a$11$cM4M1uqnwDvv1mLng9FYEubGpAyTnfppvyD75H8FhR0pz.71jEwMK', N'trana')
INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [MatKhau], [TenDangNhap]) VALUES (13, N'6', N'$2a$11$KzYVaMyuXQ8UTdtPde2v3OpqAIgVVI5ZyoaBP.bhAwV56Xcta7KwO', N'6')
INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [MatKhau], [TenDangNhap]) VALUES (14, N'1', N'1', N'1')
INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [MatKhau], [TenDangNhap]) VALUES (15, N'nguyen van a', N'$2a$11$88MoOt4ng/jSMYfaJ2teA.q7Qd2N2UFe2kTeg4FbJJmLf1tuDQY3O', N'dinhanh123')
INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [MatKhau], [TenDangNhap]) VALUES (16, N'9', N'$2a$11$GY9xz//HMLmqVZ4pQi6gveiGp.pzCVDvCLbTlWU5m5.F7GFcKg4O6', N'9')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__55F68FC04BEF4244]    Script Date: 13/10/2022 7:50:34 SA ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon1] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon1]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Mon] FOREIGN KEY([MaMon])
REFERENCES [dbo].[Mon] ([MaMon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Mon]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_BanCafe] FOREIGN KEY([MaSoBan])
REFERENCES [dbo].[BanCafe] ([MaSoBan])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_BanCafe]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[Mon]  WITH CHECK ADD  CONSTRAINT [FK_Mon_DanhMuc] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[Mon] CHECK CONSTRAINT [FK_Mon_DanhMuc]
GO
USE [master]
GO
ALTER DATABASE [Demo_QuanLyCafe] SET  READ_WRITE 
GO
