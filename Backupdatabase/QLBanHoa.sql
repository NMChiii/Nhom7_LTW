USE [QLBanHoa]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 1/26/2024 2:18:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[UserAdmin] [varchar](30) NOT NULL,
	[PassAdmin] [varchar](30) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDatHang]    Script Date: 1/26/2024 2:18:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDatHang](
	[SoDH] [int] NOT NULL,
	[Mahoa] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [Pk_ChiTietDatHang] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC,
	[Mahoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 1/26/2024 2:18:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[SoDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDH] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
 CONSTRAINT [Pk_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoa]    Script Date: 1/26/2024 2:18:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoa](
	[Mahoa] [int] IDENTITY(1,1) NOT NULL,
	[Tenloaihoa] [nvarchar](100) NOT NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhBia] [varchar](50) NULL,
	[NgayCapNhat] [datetime] NULL,
	[SoLuongTon] [int] NULL,
	[MaLH] [int] NULL,
	[MaNCC] [int] NULL,
 CONSTRAINT [Pk_Sach] PRIMARY KEY CLUSTERED 
(
	[Mahoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/26/2024 2:18:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[Email] [varchar](100) NULL,
	[DiachiKH] [nvarchar](200) NULL,
	[DienThoaiKH] [varchar](50) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [Pk_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loaihoa]    Script Date: 1/26/2024 2:18:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loaihoa](
	[MaLH] [int] IDENTITY(1,1) NOT NULL,
	[Tenloaihoa] [nvarchar](50) NOT NULL,
 CONSTRAINT [Pk_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaLH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhacungcap]    Script Date: 1/26/2024 2:18:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhacungcap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [Pk_Nhacungcap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [Hoten]) VALUES (N'admin', N'123456', N'Vang Hoàng Phi')
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [Hoten]) VALUES (N'user', N'654321', N'Mr Phi')
GO
SET IDENTITY_INSERT [dbo].[Hoa] ON 

INSERT [dbo].[Hoa] ([Mahoa], [Tenloaihoa], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaLH], [MaNCC]) VALUES (1, N'Hoa Hồng Đỏ', CAST(25000 AS Decimal(18, 0)), N'Hoa hồng đỏ là biểu tượng của sự lãng mạn trong tình yêu, niềm đam mê mãnh liệt. Màu sắc này thể hiện cho tình cảm sâu đậm mà bạn dành cho người ấy. Để bày tỏ và thổ lộ tình cảm với đối phương thì đây quả là món quà valentine ý nghĩa', N'hoahongdo.jpg', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 1, 1)
INSERT [dbo].[Hoa] ([Mahoa], [Tenloaihoa], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaLH], [MaNCC]) VALUES (2, N' Hoa hồng Trắng', CAST(15000 AS Decimal(18, 0)), N'Hoa hồng trắng tôn vinh sự vĩnh cửu, lòng trung thành trong tình yêu và tình bạn. Một sự gắn bó của hai tâm hồn vượt qua mọi cám dỗ và khó khăn. Loài hoa này còn có thể thay cho lời yêu chung thủy, biểu đạt một tình cảm trong sáng, một lời hứa sát cánh cùng nhau khi nắm tay nhau bước qua mọi thăng trầm cuộc sống.', N'hoahongtrang.jpg', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 17, 1, 1)
INSERT [dbo].[Hoa] ([Mahoa], [Tenloaihoa], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaLH], [MaNCC]) VALUES (3, N'Hoa hồng Vàng', CAST(35000 AS Decimal(18, 0)), N'Hoa hồng vàng tượng trưng cho tình bạn vô tư, thân thiết, chân thành. Khi muốn động viên hay muốn ai đó biết rằng bạn đang quan tâm đến họ, thì hãy tặng ngay một đóa hoa hồng vàng nhé. Loại hoa này thường được dành như một lời chúc mừng hay chia sẻ niềm vui với những người thân quen.', N'hoahongvang.jpg', CAST(N'2016-02-04T00:00:00.000' AS DateTime), 30, 1, 1)
INSERT [dbo].[Hoa] ([Mahoa], [Tenloaihoa], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaLH], [MaNCC]) VALUES (4, N'Mai Năm Cánh', CAST(75000 AS Decimal(18, 0)), N'Số 5 tượng trưng cho 5 điều ý nghĩa đó là thuận lợi, hoa bình, khoái lạc, trường thọ và hạnh phúc. Bên cạnh đó, hoa mai 5 cánh còn là biểu tượng của ngũ hành âm dương. Nó đại diện cho năm mới với nhiều điều như ý. Chính vì thế, mai 5 cánh luôn được săn lùng để trưng trong nhà ngày Tết.', N'hoamai5canh.jpg', CAST(N'2016-03-04T00:00:00.000' AS DateTime), 5, 2, 2)
INSERT [dbo].[Hoa] ([Mahoa], [Tenloaihoa], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaLH], [MaNCC]) VALUES (5, N'Mai núi', CAST(455000 AS Decimal(18, 0)), N'Người ta chưng hoa mai vào dịp Tết với mong muốn một năm mới phát tài, giàu sang. Theo quan niệm của nhiều người, nhà nào có hoa mai nở càng nhiều cánh thì nhà đó càng may mắn và sung túc trong năm mới. Hoa mai tượng trưng cho phẩm đức nhẫn nại và đức hy sinh cao cả, sự bền bỉ của người Việt Nam.', N'hoamainui.jpg', CAST(N'2016-04-04T00:00:00.000' AS DateTime), 9, 2, 4)
INSERT [dbo].[Hoa] ([Mahoa], [Tenloaihoa], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaLH], [MaNCC]) VALUES (6, N'Mai chủy', CAST(45000 AS Decimal(18, 0)), N'xua đuổi những điều xấu xa, không tốt đẹp và cầu cho một năm mới luôn được bình an, hạnh phúc và phát đạt. Và có lẽ vì thế mà hoa mai vàng là một trong những sự lựa chọn hàng đầu của người dân Việt, đặc biệt là người miền Nam, chọn để thờ cúng và trang trí trong nhà vào dịp Tết Nguyên Đán.', N'hoamaichuy.jpg', CAST(N'2016-04-04T00:00:00.000' AS DateTime), 9, 2, 4)
INSERT [dbo].[Hoa] ([Mahoa], [Tenloaihoa], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaLH], [MaNCC]) VALUES (7, N'Đào Nhật Tân', CAST(500000 AS Decimal(18, 0)), N'Hoa đào được coi là tinh hoa của Ngũ hành, có thể xua đuổi bách quỷ mang đến cho con người cuộc sống bình an, hạnh phúc. Không chỉ vậy, hoa đào còn tượng trưng cho sự sinh sôi nảy nở. Ai cũng mong muốn có một năm an khang thịnh vượng, làm ăn thuận lợi, phát tài, gia đình vui vẻ.', N'daonhattan.jpg', CAST(N'2016-04-04T00:00:00.000' AS DateTime), 9, 3, 4)
INSERT [dbo].[Hoa] ([Mahoa], [Tenloaihoa], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaLH], [MaNCC]) VALUES (8, N'Đào Thất Thốn', CAST(400000 AS Decimal(18, 0)), N'Cây không nở hoa quá nhiều nhưng lại rất bền, lan tỏa hương thơm vào ban đêm. Đến độ hoa tàn, cánh không bị rơi lả tả như các giống đào bình thường mà vẫn giữ nguyên trên đài. Bởi thế, đào Thất Thốn ý nghĩa mang đến cho người thưởng lãm thấy sự trọn vẹn, đủ đầy và viên mãn.', N'daothatthon.jpg', CAST(N'2016-04-04T00:00:00.000' AS DateTime), 9, 3, 4)
INSERT [dbo].[Hoa] ([Mahoa], [Tenloaihoa], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaLH], [MaNCC]) VALUES (9, N'Đào phai', CAST(55000 AS Decimal(18, 0)), N'Hoa đào là tinh hoa ngũ hành: Vẻ đẹp tươi thắm và sắc độ của hoa đào từ xưa đến nay đã được xem như tinh hoa ngũ hành của trời đất. Ý nghĩa của đào trong phong thủy chính là nó có thể giúp xua đuổi bách quỷ cùng những điều không may, từ đó mang lại cho con người một năm mới bình yên và hạnh phúc.', N'daophai.jpg', CAST(N'2016-04-04T00:00:00.000' AS DateTime), 9, 3, 4)
INSERT [dbo].[Hoa] ([Mahoa], [Tenloaihoa], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaLH], [MaNCC]) VALUES (10, N'Hoa Thạch Thảo Trắng', CAST(500000 AS Decimal(18, 0)), N'Sắc trắng của hoa thạch thảo mang ý nghĩa và đại diện cho sự trong sáng, thuần khiết của những thiếu nữ đang ngại ngùng, e ấp và cần được sự chở che và bảo vệ. Những sắc hoa này đại diện cho sự may mắn và tài lộc. Đồng thời, với sắc hoa này cũng thể hiện được sự mến mộ đối với người nhận', N'thachthaotrang.jpg', CAST(N'2016-04-04T00:00:00.000' AS DateTime), 9, 4, 4)
INSERT [dbo].[Hoa] ([Mahoa], [Tenloaihoa], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaLH], [MaNCC]) VALUES (11, N'Hoa Thạch Thảo Tím', CAST(500000 AS Decimal(18, 0)), N'Ý nghĩa hoa Thạch Thảo màu này tượng trưng cho sự may mắn, vui vẻ. Người Việt Nam mình thường hay chọn hoa hồng này vào dịp lễ tết trưng bày trong nhà để mang niềm vui, hạnh phúc, bình an về nhà. Bình hoa Thạch Thảo hồng điểm tô cho không gian nhà rực rỡ, tươi tắn, chỉ cần nhìn ngắm thôi là tâm trạng phấn chấn.', N'thachthaotim.jpg', CAST(N'2016-04-04T00:00:00.000' AS DateTime), 9, 4, 4)
INSERT [dbo].[Hoa] ([Mahoa], [Tenloaihoa], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaLH], [MaNCC]) VALUES (12, N'Hoa Thạch Thảo Xanh', CAST(500000 AS Decimal(18, 0)), N'Những sắc hoa này đại diện cho sự may mắn và tài lộc. Đồng thời, với sắc hoa này cũng thể hiện được sự mến mộ đối với người nhận.', N'thachthaoxanh.jpg', CAST(N'2016-04-04T00:00:00.000' AS DateTime), 9, 4, 4)
INSERT [dbo].[Hoa] ([Mahoa], [Tenloaihoa], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaLH], [MaNCC]) VALUES (13, N'Hoa Cẩm Tú Cầu Trắng', CAST(500000 AS Decimal(18, 0)), N'Hoa cẩm tú cầu trắng. Đây là loài hoa tượng trưng cho sự thuần khiết, trong sáng và ngây thơ. Đồng thời, ý nghĩa của cẩm tú cầu này còn thể hiện sự giàu có và sắc đẹp.', N'camtucautrang.jpg', CAST(N'2016-04-04T00:00:00.000' AS DateTime), 9, 5, 4)
INSERT [dbo].[Hoa] ([Mahoa], [Tenloaihoa], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaLH], [MaNCC]) VALUES (14, N'Hoa Cẩm Tú Cầu Xanh', CAST(500000 AS Decimal(18, 0)), N'Hoa cẩm tú cầu màu xanh là đại diện cho một lời xin lỗi chân thành, được dùng để từ chối tình cảm của người khác hoặc cũng có thể là bày tỏ sự hối hận và xin được tha thứ.', N'camtucauxanh.jpg', CAST(N'2016-04-04T00:00:00.000' AS DateTime), 9, 5, 4)
SET IDENTITY_INSERT [dbo].[Hoa] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiachiKH], [DienThoaiKH], [NgaySinh]) VALUES (1, N'Le thi thanh thuy', N'thuythi', N'123', N'thuythi123@gmail.com', NULL, N'2551555251', CAST(N'2024-02-09T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[Loaihoa] ON 

INSERT [dbo].[Loaihoa] ([MaLH], [Tenloaihoa]) VALUES (1, N'Hoa Hồng')
INSERT [dbo].[Loaihoa] ([MaLH], [Tenloaihoa]) VALUES (2, N'Hoa Mai')
INSERT [dbo].[Loaihoa] ([MaLH], [Tenloaihoa]) VALUES (3, N'Hoa Đào')
INSERT [dbo].[Loaihoa] ([MaLH], [Tenloaihoa]) VALUES (4, N'Hoa Thạch Thảo')
INSERT [dbo].[Loaihoa] ([MaLH], [Tenloaihoa]) VALUES (5, N'Hoa Cẩm Tú Cầu')
SET IDENTITY_INSERT [dbo].[Loaihoa] OFF
GO
SET IDENTITY_INSERT [dbo].[Nhacungcap] ON 

INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (1, N'Flower Corner', N'225/3 Nguyễn Đình Chiểu, Phường 5, Quận 3, TPHCM', N'19006 33045')
INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (2, N'Alohoatuoi', N'613 Thống Nhất, phường 16, quận Gò Vấp, TP. HCM', N'0339 680 689')
INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (3, N'Tiệm hoa nhà nàng', N'270L Võ Thị Sáu, phường 7, Quận 3, TP.HCM', N'1800 6353')
INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (4, N'Hoa yêu thương', N'230B Võ Thị Sáu, phường 7, Quận 3, TP.HCM', N'1800 6353')
INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (5, N'Flower Box', N'17D Nguyễn Thái Học, phường Cầu Ông Lãnh, Quận 1, TP.HCM', N'1800 6353')
INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (6, N'Potico', N'86 - 88 Đinh Tiên Hoàng, phường Đakao, Quận 1, TP. HCM', N'0286 660 0707')
INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (7, N'Hoa Tuoi 9x', N'74E Hai Bà Trưng, phường Bến Nghé, Quận 1, TP.HCM', N'0286 660 0707')
SET IDENTITY_INSERT [dbo].[Nhacungcap] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__A9D10534E846C715]    Script Date: 1/26/2024 2:18:00 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__D5B8C7F05B69A8A6]    Script Date: 1/26/2024 2:18:00 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD  CONSTRAINT [Fk_DonHang] FOREIGN KEY([SoDH])
REFERENCES [dbo].[DonDatHang] ([SoDH])
GO
ALTER TABLE [dbo].[ChiTietDatHang] CHECK CONSTRAINT [Fk_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD  CONSTRAINT [Fk_Hoa] FOREIGN KEY([Mahoa])
REFERENCES [dbo].[Hoa] ([Mahoa])
GO
ALTER TABLE [dbo].[ChiTietDatHang] CHECK CONSTRAINT [Fk_Hoa]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [Fk_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [Fk_KhachHang]
GO
ALTER TABLE [dbo].[Hoa]  WITH CHECK ADD  CONSTRAINT [Fk_Loaihoa] FOREIGN KEY([MaLH])
REFERENCES [dbo].[Loaihoa] ([MaLH])
GO
ALTER TABLE [dbo].[Hoa] CHECK CONSTRAINT [Fk_Loaihoa]
GO
ALTER TABLE [dbo].[Hoa]  WITH CHECK ADD  CONSTRAINT [Fk_Nhcungcap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[Nhacungcap] ([MaNCC])
GO
ALTER TABLE [dbo].[Hoa] CHECK CONSTRAINT [Fk_Nhcungcap]
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD CHECK  (([DonGia]>=(0)))
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[Hoa]  WITH CHECK ADD CHECK  (([GiaBan]>=(0)))
GO
