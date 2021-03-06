CREATE DATABASE [ShopThoiTrang]
GO
USE [ShopThoiTrang]
GO
/****** Object:  Table [dbo].[category]    Script Date: 11/2/2020 11:20:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[slug] [varchar](255) NOT NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[metakey] [nvarchar](150) NULL,
	[metadesc] [nvarchar](150) NULL,
	[created_at] [smalldatetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[link]    Script Date: 11/2/2020 11:20:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[link](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[slug] [varchar](max) NULL,
	[tableId] [int] NULL,
	[type] [varchar](50) NULL,
	[parentId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 11/2/2020 11:20:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[link] [varchar](255) NULL,
	[tableid] [int] NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[position] [varchar](255) NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 11/2/2020 11:20:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](255) NOT NULL,
	[userid] [int] NOT NULL,
	[created_ate] [smalldatetime] NOT NULL,
	[exportdate] [smalldatetime] NULL,
	[deliveryaddress] [nvarchar](255) NOT NULL,
	[deliveryname] [nvarchar](100) NOT NULL,
	[deliveryphone] [varchar](255) NOT NULL,
	[deliveryemail] [varchar](255) NOT NULL,
	[deliveryPaymentMethod] [nvarchar](255) NOT NULL,
	[StatusPayment] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordersdetail]    Script Date: 11/2/2020 11:20:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordersdetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NOT NULL,
	[productid] [int] NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[priceSale] [int] NOT NULL,
	[amount] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/2/2020 11:20:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[catid] [int] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[slug] [nvarchar](255) NOT NULL,
	[img] [varchar](100) NOT NULL,
	[detail] [ntext] NOT NULL,
	[price] [float] NOT NULL,
	[pricesale] [float] NOT NULL,
	[number] [int] NOT NULL,
	[sold] [int] NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[status] [int] NOT NULL,
	[Subcategory] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 11/2/2020 11:20:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[accessName] [varchar](255) NOT NULL,
	[description] [nvarchar](225) NULL,
	[GropID] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slider]    Script Date: 11/2/2020 11:20:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slider](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[url] [varchar](255) NOT NULL,
	[position] [varchar](100) NOT NULL,
	[img] [varchar](100) NOT NULL,
	[orders] [int] NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 11/2/2020 11:20:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](255) NOT NULL,
	[username] [varchar](225) NOT NULL,
	[password] [varchar](64) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[gender] [nvarchar](5) NULL,
	[address] [nvarchar](max) NULL,
	[phone] [varchar](20) NULL,
	[img] [varchar](100) NULL,
	[access] [int] NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (2, N'Áo thung dài tay nam', N'ao-thung-dai-tay', 4, 1, N'a', N'a', CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-27T13:07:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (4, N'Thời trang nam', N'thoi-trang-nam', 0, 2, N'a', N'a', CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-27T13:07:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'Thời trang nữ', N'thoi-trang-nu', 0, 3, N'a', N'a', CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-27T13:07:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (8, N'Áo thung cổ tim nam', N'ao-thung-co-tim-nam', 4, 5, N'a', N'a', CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-27T14:35:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (14, N'Áo phông nữ', N'ao-phong-nu', 6, 1, N'a', N'a', CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-20T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (10, N'Áo thung cổ tròn nam', N'ao-thung-co-tron-nam', 4, 1, N'a', N'a', CAST(N'2020-10-27T13:09:00' AS SmallDateTime), 1, CAST(N'2020-10-27T13:09:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (11, N'Áo polo nam', N'ao-polo-nam', 4, 1, N'a', N'a', CAST(N'2020-10-27T13:50:00' AS SmallDateTime), 1, CAST(N'2020-10-27T14:35:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (16, N'Phụ kiện', N'phu-kien', 0, 1, N'a', N'a', CAST(N'2020-10-27T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-27T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (20, N'Dây nịch', N'day-lich', 16, 1, N'a', N'a', CAST(N'2020-10-27T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-27T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (21, N'Khóa', N'khoa', 16, 1, N'a', N'a', CAST(N'2020-10-28T14:58:00' AS SmallDateTime), 1, CAST(N'2020-10-28T14:58:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (22, N'Khuyến mãi', N'khuyen-mai', 1, 1, N's', N'a', CAST(N'2020-10-29T00:36:00' AS SmallDateTime), 1, CAST(N'2020-10-29T00:36:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (23, N'Thời trang Nam Nữ', N'thoi-trang-nam-nu', 1, 1, N'a', N'a', CAST(N'2020-10-29T01:03:00' AS SmallDateTime), 1, CAST(N'2020-10-29T01:03:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (24, N'Thời trang Trẻ Em', N'thoi-trang-tre-em', 0, 1, N'a', N'a', CAST(N'2020-10-29T10:24:00' AS SmallDateTime), 1, CAST(N'2020-10-29T10:24:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[category] OFF
SET IDENTITY_INSERT [dbo].[link] ON 

INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (33, N'ao-somi-nam-dai-tay-x01s-', 1, N'ProductDetail', 17)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (34, N'-ao-phong-nam-dai-tay-xam-8tl', 1, N'ProductDetail', 18)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (35, N'ao-phong-nam-co-tim-234l-xam', 1, N'ProductDetail', 19)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (36, N'ao-phong-nu-6tl20w010', 1, N'ProductDetail', 20)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (37, N'ao-phong-nu-tay-dai-as22-', 1, N'ProductDetail', 21)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (38, N'khoa', 2, N'category', 21)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (39, N'tat-trung-hoa-tiet-giang-sinh', 1, N'ProductDetail', 26)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (40, N'ao-kieu-nu', 1, N'ProductDetail', 27)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (41, N'-set-3-doi-tat-be-gai-co-ngan', 1, N'ProductDetail', 28)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (42, N'tat-cao-co-nu', 1, N'ProductDetail', 29)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (43, N'tat-nu-co-ngan-phoi-mau', 1, N'ProductDetail', 30)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (44, N'chan-ca-nhan-tron-mau', 1, N'ProductDetail', 31)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (45, N'-ao-phong-nam--cotton', 1, N'ProductDetail', 32)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (46, N'khuyen-mai', 2, N'category', 22)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (47, N'thoi-trang-nam-nu', 2, N'category', 23)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (48, N'thoi-trang-tre-em', 2, N'category', 24)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (49, N'ao-so-mi-be-gai-hoa-tiet-ke-caro', 1, N'ProductDetail', 33)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (50, N'ao-so-mi-be-gai', 1, N'ProductDetail', 34)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (51, N'ao-phong-be-gai-disney-cong-chua', 1, N'ProductDetail', 35)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (52, N'quan-sooc-be-gai', 1, N'ProductDetail', 36)
SET IDENTITY_INSERT [dbo].[link] OFF
SET IDENTITY_INSERT [dbo].[menu] ON 

INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Trang Chủ', N'menu', N'', 2, 0, 1, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-12-05T13:03:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (4, N'Sản Phẩm', N'menu', N'san-pham', 2, 0, 2, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'Thời trang nam', N'menu', N'thoi-trang-nam', 2, 4, 10, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-12-03T22:32:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (7, N'Thời trang nữ', N'menu', N'thoi-trang-nu', 2, 4, 13, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-05-05T22:39:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (8, N'Phụ kiện', N'menu', N'phu-kien', 2, 4, 14, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-05-05T22:40:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (9, N'Khuyến Mãi', N'menu', N'khuyen-mai', 2, 4, 11, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (26, N'Theo dõi đơn hàng', N'menu', N'theo-doi-don-hang', 2, 0, 1, N'mainmenu', CAST(N'2020-05-06T23:02:00' AS SmallDateTime), 1, CAST(N'2020-05-06T23:02:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1028, N'Giới thiệu', N'menu', N'gioi-thieu-ve-cong-ty-va-y-nghia-logo', 3, 5, 1, N'mainmenu', CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1029, N'Sản phẩm yêu thích', N'menu', N'san-pham-yeu-thich', 3, 5, 2, N'mainmenu', CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1030, N'Liên Hệ', N'menu', N'lien-he', 3, 0, 1, N'mainmenu', CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1031, N'Thời trang nam nữ', N'menu', N'thoi-trang-nam-nu', 2, 4, 1, N'mainmenu', CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1032, N'Giới thiệu', N'menu', N'gioi-thieu', 2, 0, 1, N'mainmenu', CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1033, N'Tin tức', N'menu', N'tin-tuc', 2, 0, 1, N'mainmenu', CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1034, N'Chính sách', N'menu', N'chinh-sach', 2, 0, 1, N'mainmenu', CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[menu] OFF
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (6, N'9435211/2/20205:57:06am', 1, CAST(N'2020-11-02T05:57:00' AS SmallDateTime), CAST(N'2020-11-02T05:57:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'COD', 2, CAST(N'2020-11-02T05:57:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (7, N'9164111/2/20206:06:16am', 1, CAST(N'2020-11-02T06:06:00' AS SmallDateTime), CAST(N'2020-11-02T06:06:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'COD', 2, CAST(N'2020-11-02T06:06:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (8, N'b320d086-6e51-41ec-ba84-db6c5959cb6e', 1, CAST(N'2020-11-02T06:07:00' AS SmallDateTime), CAST(N'2020-11-02T06:07:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán MOMO', 2, CAST(N'2020-11-02T06:07:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (9, N'5099311/2/20206:08:56am', 1, CAST(N'2020-11-02T06:09:00' AS SmallDateTime), CAST(N'2020-11-02T06:09:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán Ngân Lượng', 2, CAST(N'2020-11-02T06:09:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (10, N'5182011/2/20206:20:55am', 1, CAST(N'2020-11-02T06:21:00' AS SmallDateTime), CAST(N'2020-11-02T06:21:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'ATM Online qua ngân lượng', 2, CAST(N'2020-11-02T06:21:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (11, N'd9be2bdf-cd9e-47ce-a0fb-9fb4bcdf739e', 1, CAST(N'2020-11-02T10:52:00' AS SmallDateTime), CAST(N'2020-11-02T10:52:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán MOMO', 2, CAST(N'2020-11-02T10:52:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (12, N'e16221ce-c3eb-4a08-8fcf-25dd833febe1', 1, CAST(N'2020-11-02T10:58:00' AS SmallDateTime), CAST(N'2020-11-02T10:58:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán MOMO', 1, CAST(N'2020-11-02T10:58:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (13, N'9595411/2/202011:00:47am', 1, CAST(N'2020-11-02T11:01:00' AS SmallDateTime), CAST(N'2020-11-02T11:01:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán Ngân Lượng', 2, CAST(N'2020-11-02T11:01:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (14, N'2367211/2/202011:02:19am', 1, CAST(N'2020-11-02T11:02:00' AS SmallDateTime), CAST(N'2020-11-02T11:02:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán Ngân Lượng', 1, CAST(N'2020-11-02T11:02:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (15, N'fd30377d-f006-4eee-a26e-0273bbb56df6', 1, CAST(N'2020-11-02T11:08:00' AS SmallDateTime), CAST(N'2020-11-02T11:08:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán MOMO', 1, CAST(N'2020-11-02T11:08:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (16, N'9725611/2/202011:09:08am', 1, CAST(N'2020-11-02T11:09:00' AS SmallDateTime), CAST(N'2020-11-02T11:09:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán Ngân Lượng', 1, CAST(N'2020-11-02T11:09:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (17, N'3944111/2/202011:10:24am', 1, CAST(N'2020-11-02T11:10:00' AS SmallDateTime), CAST(N'2020-11-02T11:10:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'ATM Online qua ngân lượng', 1, CAST(N'2020-11-02T11:10:00' AS SmallDateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[order] OFF
SET IDENTITY_INSERT [dbo].[ordersdetail] ON 

INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (46, 6, 9, 230000, 1, 10, 207000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (47, 6, 10, 420000, 1, 10, 378000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (48, 7, 9, 230000, 1, 10, 207000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (49, 8, 9, 230000, 1, 10, 207000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (50, 9, 9, 230000, 1, 10, 207000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (51, 10, 9, 230000, 1, 10, 207000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (52, 11, 5, 249000, 1, 10, 224100)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (53, 11, 16, 399000, 1, 10, 359100)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (54, 12, 9, 230000, 1, 10, 207000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (55, 12, 10, 420000, 1, 10, 378000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (56, 12, 32, 150000, 1, 20, 120000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (57, 13, 9, 230000, 1, 10, 207000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (58, 13, 20, 349000, 1, 0, 349000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (59, 14, 9, 230000, 1, 10, 207000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (60, 14, 20, 349000, 1, 0, 349000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (61, 15, 9, 230000, 2, 10, 184000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (62, 15, 20, 349000, 1, 0, 349000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (63, 15, 5, 249000, 3, 10, 174300)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (64, 15, 32, 150000, 2, 20, 90000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (65, 15, 10, 420000, 3, 10, 294000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (66, 16, 9, 230000, 2, 10, 184000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (67, 16, 20, 349000, 1, 0, 349000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (68, 16, 16, 399000, 1, 10, 359100)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (69, 16, 6, 249000, 1, 12, 219120)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (70, 16, 5, 249000, 1, 10, 224100)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (71, 17, 9, 230000, 3, 10, 161000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (72, 17, 20, 349000, 2, 0, 698000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (73, 17, 16, 399000, 1, 10, 359100)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (74, 17, 6, 249000, 2, 12, 189240)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (75, 17, 5, 249000, 1, 10, 224100)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (76, 17, 10, 420000, 1, 10, 378000)
SET IDENTITY_INSERT [dbo].[ordersdetail] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (4, 4, N'ÁO PHÔNG NAM 100pt COTTON', N'ao-phong-nam-100pt-cotton', N'aothungcotron/ao-phong-nam-marvel-100pt-cotton.jpg', N'MÔ TẢ
Áo phông cotton USA, hình in Marvel bản quyền
Dáng regular, cộc tay, cổ tròn
CHẤT LIỆU
100% cotton
HƯỚNG DẪN SỬ DỤNG
Giặt đồ ở nhiệt độ và chế độ thường
Lưu ý giặt với sản phẩm cùng màu
Tránh các chất tẩy có chứa Clo
Phơi trong bóng mát hoặc sấy nhẹ nhàng ở nhiệt độ thấp
Là ở nhiệt độ trung bình 150 độ C và không là lên chi tiết trang trí', 249000, 10, 100, 0, CAST(N'2020-10-27T13:30:00' AS SmallDateTime), 1, 1, 4)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (5, 10, N'ÁO THUN NAM CỔ TRÒN CO GIÃN', N'ao-thun-nam-co-tron-co-gian', N'aothungdaitay/ao-phong-nam-co-tron-co-gian.jpg', N'ÁO PHÔNG NAM CỔ TRÒN CO GIÃN
Mã: 8TS20W004
249.000₫

CHỌN MÀU:
SA079
SB464
SG078
SK010
SR091
CHỌN KÍCH CỠ:
S
M
L
XL
Tư vấn chọn kích cỡ
CHỌN SỐ LƯỢNG:
1
THÊM VÀO GIỎ
TÌM TẠI CỬA HÀNG
MÔ TẢ
Áo phông nam co giãn
Dáng regular, cộc tay, cổ tròn
CHẤT LIỆU
Nhiều nguyên liệu', 249000, 10, 100, 0, CAST(N'2020-10-27T13:31:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (6, 4, N' ÁO PHÔNG NAM CỔ TRÒN XXD', N'-ao-phong-nam-co-tron-xxd', N'aothungdaitay/-ao-phong-nam-co-tron-hinh-in-100pt-cotton.jpg', N'MÔ TẢ
Áo phông cotton USA
Hình in trước ngực
Dáng regular, cộc tay, cổ tròn
CHẤT LIỆU
100% cotton
HƯỚNG DẪN SỬ DỤNG
Giặt máy chế độ nhẹ nhàng, ở nhiệt độ thường.
Không sử dụng hóa chất tẩy có chứa clo.
Phơi trong bóng mát
Sấy thùng, chế độ nhẹ nhàng.
Là ở nhiệt độ trung bình 150 độ C.
Giặt với sản phẩm cùng màu.
Không là lên chi tiết trang trí.', 249000, 12, 100, 45, CAST(N'2020-10-27T13:32:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (7, 4, N'ÁO PHÔNG NAM  NÂU', N'ao-phong-nam--nau', N'aothungdaitay/ao-phong-nam-co-tron-hinh-in-100pt-cotton.jpg', N'MÔ TẢ
Áo phông cotton USA
Hình in trước ngực
Dáng regular, cộc tay, cổ tròn
CHẤT LIỆU
100% cotton
HƯỚNG DẪN SỬ DỤNG
Giặt máy chế độ nhẹ nhàng, ở nhiệt độ thường.
Không sử dụng hóa chất tẩy có chứa clo.
Phơi trong bóng mát
Sấy thùng, chế độ nhẹ nhàng.
Là ở nhiệt độ trung bình 150 độ C.
Giặt với sản phẩm cùng màu.
Không là lên chi tiết trang trí.', 250000, 20, 100, 0, CAST(N'2020-10-27T13:33:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (8, 4, N'ÁO PHÔNG NAM CỔ TRÒN SỌC', N'ao-phong-nam-co-tron-soc', N'aothunnam/ao-phong-nam-co-tron-100-cotton.jpg', N'Áo phông cotton USA
In hình trước ngực
Dáng regular, cổ tròn, cộc tay
CHẤT LIỆU
100% cotton
HƯỚNG DẪN SỬ DỤNG
Giặt máy chế độ nhẹ nhàng, ở nhiệt độ thường.
Không sử dụng hóa chất tẩy có chứa clo.
Phơi trong bóng mát
Sấy thùng, chế độ nhẹ nhàng.
Là ở nhiệt độ trung bình 150 độ C.
Giặt với sản phẩm cùng màu.
Không là lên chi tiết trang trí.', 420000, 10, 100, 0, CAST(N'2020-10-27T13:34:00' AS SmallDateTime), 1, 0, 0)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (9, 10, N'ÁO PHÔNG NAM', N'ao-phong-nam', N'aothungcotron/ao-phong-nam.jpg', N'MÔ TẢ
Áo phông nam
SẢN PHẨM TƯƠNG TỰ', 230000, 10, 21, 0, CAST(N'2020-10-27T13:36:00' AS SmallDateTime), 1, 1, 4)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (10, 10, N'ÁO THUN UNISEX NGƯỜI LỚN', N'ao-phong-unisex-nguoi-lon', N'aothungdaitay/ao-phong-unisex-nguoi-lon.jpg', N'MÔ TẢ
Áo phông nam', 420000, 10, 100, 25, CAST(N'2020-10-27T13:36:00' AS SmallDateTime), 1, 1, 23)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (11, 6, N' ÁO THUN NU GO VIETNAM', N'-ao-thun-nu-go-vietnam', N'aothungdaitay/-ao-phong-unisex-mickey-go-vietnam.jpg', N'MÔ TẢ
Áo phông unisex mickey go Vietnam
THÔNG SỐ NGƯỜI MẪU
Chiều cao: 182cm
Cân nặng: 71kg
Mặc áo size: M', 130000, 10, 130, 0, CAST(N'2020-10-27T13:40:00' AS SmallDateTime), 1, 1, 6)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (12, 23, N' ÁO PHÔNG UNISEX NGƯỜI LỚN', N'-ao-phong-unisex-nguoi-lon', N'aothungcotron/-ao-phong-unisex-nguoi-lon.jpg', N'MÔ TẢ
Áo phông unisex người lớn
THÔNG SỐ NGƯỜI MẪU
Chiều cao: 178cm
Cân nặng: 72kg
Mặc áo size: M', 242000, 13, 150, 0, CAST(N'2020-10-27T13:41:00' AS SmallDateTime), 1, 1, 23)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (13, 14, N'ÁO PHÔNG NỮ VÀNG IN HÌNH ', N'ao-phong-nu-vang-in-hinh-', N'aothungcotim/ao-phong-nam-vang-in-hinh-.jpg', N'MÔ TẢ
Áo phông in hình thân trước, chất liệu cotton US.
Phom regular, cổ tròn, tay cộc.
HOÀN CẢNH SỬ DỤNG
Kiểu dáng năng động, thoải mái. Thích hợp mặc nhiều hoàn cảnh.
Phù hợp mặc mùa hè.
Kết hợp với quần sóoc, jeans…với giày thể thao
CHẤT LIỆU
100% cotton
HƯỚNG DẪN SỬ DỤNG
Giặt máy ở chế độ nhẹ, nhiệt độ thường.
Không sử dụng hóa chất tẩy có chứa Clo.
Phơi trong bóng mát.
Sấy thùng chế độ nhẹ nhàng.
Là ở nhiệt độ trung bình 150 độ C
Giặt với sản phẩm cùng màu.
Không là lên chi tiết trang trí.
THÔNG SỐ NGƯỜI MẪU
Chiều cao: 182cm
Cân nặng: 71kg
Mặc áo size: M', 254000, 3, 130, 15, CAST(N'2020-10-27T13:42:00' AS SmallDateTime), 1, 1, 6)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (14, 6, N'ÁO SƠ MI NỮ KIỂU CỔ TIM', N'ao-so-mi-nu-kieu-co-tim', N'aothunnu/ao-so-mi-nu-kieu-co-tim.jpg', N'MÔ TẢ
Áo polo trơn, chất liệu cotton USA co giãn.
Phom slimfit, cổ polo, tay cộc.
Cài khuy phía trước.
Áo đơn giản, thoải mái, phù hợp nhiều hoàn cảnh.
Thích hợp mặc quanh năm.
Kết hợp với quần sóoc, jeans, khaki…với giày thể thao, sandal.
CHẤT LIỆU
95% cotton 5% spandex.
HƯỚNG DẪN SỬ DỤNG
Giặt máy ở chế độ nhẹ, nhiệt độ thường.
Không sử dụng hóa chất tẩy có chứa clo.
Phơi trong bóng mát.
Sấy khô ở nhiệt độ thường.
Là ở nhiệt độ thấp 110 độ C.
Giặt với sản phẩm cùng màu.
Không là lên chi tiết trang trí.
THÔNG SỐ NGƯỜI MẪU
Chiều cao: 181 cm
Cân nặng: 72 kg
Mặc áo size: M', 350000, 5, 130, 35, CAST(N'2020-10-27T13:51:00' AS SmallDateTime), 1, 0, 6)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (15, 6, N'ÁO POLO NU 8TP20A003', N'ao-polo-nam-8tp20a003', N'aopolo/ao-polo-nam-8tp20a003.jpg', N'MÔ TẢ
Áo polo trơn, chất liệu polyester pha.
Phom regular, cổ polo, tay cộc.
Cài khuy phía trước.
Áo đơn giản, thoải mái, phù hợp nhiều hoàn cảnh.
Thích hợp mặc quanh năm.
Kết hợp với quần sóoc, jeans, khaki…với giày thể thao, sandal.
CHẤT LIỆU
53% polyester 47% cotton.
HƯỚNG DẪN SỬ DỤNG
Giặt máy nhẹ nhàng, ở nhiệt độ thường.
Không sử dụng hóa chất tẩy có chứa clo.
Phơi trong bóng mát.
Sấy khô ở nhiệt độ thấp.
Là ở nhiệt độ thường 150 độ C.
Giặt với sản phẩm cùng màu.
Không là lên chi tiết trang trí.
THÔNG SỐ NGƯỜI MẪU
Chiều cao: 181 cm
Cân nặng: 72 kg
Mặc áo size: M', 134000, 10, 130, 0, CAST(N'2020-10-27T13:52:00' AS SmallDateTime), 1, 1, 6)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (16, 11, N'ÁO POLO NAM 8TP20S010', N'ao-polo-nam-8tp20s010', N'aopolo/ao-polo-nam-8tp20s010.jpg', N'MÔ TẢ
Áo polo trơn chất liệu polyester.
Phom regular, cổ polo, tay cộc.
Kiểu dáng đơn giản, thoải mái, phù hợp nhiều hoàn cảnh.
Thích hợp mặc quanh năm.
Kết hợp với quần sóoc, jeans, khaki…với giày thể thao, sandal.
CHẤT LIỆU
100% polyester.
HƯỚNG DẪN SỬ DỤNG
Giặt máy ở chế độ nhẹ, nhiệt độ thường.
Không sử dụng hóa chất tẩy.
Phơi trong bóng mát
Sấy khô ở nhiệt độ thấp.
Là ở nhiệt độ thấp 110 độ C.
Giặt với sản phẩm cùng màu.
Không là lên chi tiết trang trí.
THÔNG SỐ NGƯỜI MẪU
Chiều cao: 181 cm
Cân nặng: 72 kg
Mặc áo size: M', 399000, 10, 100, 20, CAST(N'2020-10-27T13:54:00' AS SmallDateTime), 1, 1, 4)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (17, 2, N'ÁO SƠMI NAM DÀI TAY X01S ', N'ao-somi-nam-dai-tay-x01s-', N'aothungdaitaynam/ao-phong-nam-dai-tay-100pt-cotton.jpg', N'MÔ TẢ
Áo phông cotton.
Phom regular, cổ tròn, cái cúc phía trước,tay dài. Thích hợp mặc mùa thu đông. Kiểu dáng đơn giản, phù hợp nhiều hoàn cảnh.Có thể phối quần sóoc, jeans, khaki,giày thể thao…
CHẤT LIỆU
100% cotton
HƯỚNG DẪN SỬ DỤNG
Giặt máy ở chế độ nhẹ, nhiệt độ thường.
Không sử dụng hóa chất tẩy có chứa clo.
Phơi trong bóng mát.
Sấy khô ở nhiệt độ thấp, nhẹ nhàng.
Là ở nhiệt độ trung bình 150 độ c.
Giặt với sản phẩm cùng màu.
Không là lên chi tiết trang trí.', 455000, 10, 120, 0, CAST(N'2020-10-27T15:01:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (18, 2, N' ÁO PHÔNG NAM DÀI TAY XÁM 8TL', N'-ao-phong-nam-dai-tay-xam-8tl', N'aothungdaitaynam/-ao-phong-nam-dai-tay-100pt--cotton-8tl20w002.jpg', N'MÔ TẢ
Áo phông cotton USA, hình in trước ngực
Dáng regular, dài tay, cổ tròn
CHẤT LIỆU
100% cotton
HƯỚNG DẪN SỬ DỤNG
Giặt đồ ở nhiệt độ và chế độ thường
Lưu ý giặt với sản phẩm cùng màu
Tránh các chất tẩy có chứa Clo
Phơi trong bóng mát hoặc sấy nhẹ nhàng ở nhiệt độ thấp
Là ở nhiệt độ trung bình 150 độ C và không là lên chi tiết trang trí
', 466000, 10, 130, 0, CAST(N'2020-10-27T15:02:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (19, 8, N'ÁO PHÔNG NAM CỔ TIM 234L XÁM', N'ao-phong-nam-co-tim-234l-xam', N'aothungcotimnam/ao-phong-nam-co-tim-100pt-cotton-8ts20a006.jpg', N'MÔ TẢ
Áo phông cotton USA.
Dáng regular, cổ tim, cộc tay
CHẤT LIỆU
100% cotton
HƯỚNG DẪN SỬ DỤNG
Giặt máy chế độ nhẹ nhàng, ở nhiệt độ thường.
Không sử dụng hóa chất tẩy có chứa clo.
Phơi trong bóng mát
Sấy thùng, chế độ nhẹ nhàng.
Là ở nhiệt độ trung bình 150 độ C.
Giặt với sản phẩm cùng màu.
Không là lên chi tiết trang trí.', 129000, 0, 150, 0, CAST(N'2020-10-27T15:07:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (20, 6, N'ÁO PHÔNG NỮ 6TL20W010', N'ao-phong-nu-6tl20w010', N'aothungnu/ao-phong-nu-6tl20w010.jpg', N'MÔ TẢ
Áo phông chất liệu thun 4 chiều kim tuyến.
Phom regular, cổ tim, tay dài, đường dúm dọc thân trước.
Sản phẩm phù hợp với thời tiết thu đông
Tính ứng dụng cao phù hợp với việc đi làm, đi chơi, ...
Kiểu dáng đơn giản dễ kết hợp với các sản phẩm khác như chân váy, quần jeans,...', 349000, 0, 100, 45, CAST(N'2020-10-27T15:09:00' AS SmallDateTime), 1, 1, 6)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (21, 6, N'ÁO PHÔNG NỮ TAY DÀI AS22 ', N'ao-phong-nu-tay-dai-as22-', N'aophongnu/ao-phong-nu-in-hinh-co-tron-tay-dai.jpg', N'MÔ TẢ
Áo phông cotton in hình.
Phom regular, cổ tròn,tay dài.
Tay áo và cổ viền cổ phối màu khác thân. Thích hợp mặc mùa thu đông. Kiểu dáng đơn giản, phù hợp nhiều hoàn cảnh.Có thể phối quần, jeans, khaki,giày thể thao…
CHẤT LIỆU
100% cotton
HƯỚNG DẪN SỬ DỤNG
Giặt máy ở chế độ nhẹ nhàng , nhiệt độ thường.
Không sử dụng hóa chất tẩy có chứa clo.
Phơi trong bóng mát.
Sấy khô ở nhiệt độ thấp, nhẹ nhàng.
Là ở nhiệt độ trung bình 150 độ C.
Giặt với sản phẩm cùng màu.
Không là lên chi tiết trang trí.', 269000, 0, 60, 0, CAST(N'2020-10-27T15:14:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (26, 16, N'TẤT TRUNG HỌA TIẾT GIÁNG SINH', N'tat-trung-hoa-tiet-giang-sinh', N'phukien/tat-be-gai-co-trung-hoa-tiet-giang-sinh.jpg', N'<p>hhh</p>', 120000, 10, 1, 0, CAST(N'2020-10-28T15:02:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (27, 6, N'ÁO KIỂU NỮ', N'ao-kieu-nu', N'aothunnu/ao-kieu-nu.jpg', N'<p><span style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Áo kiểu nữ</span><br></p>', 390000, 20, 14, 0, CAST(N'2020-10-28T19:47:00' AS SmallDateTime), 1, 1, 6)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (28, 16, N' SET 3 ĐÔI TẤT BÉ GÁI CỔ NGẮN', N'-set-3-doi-tat-be-gai-co-ngan', N'phukien/-set-3-doi-tat-be-gai-co-ngan.jpg', N'<div class="product-detail-tab-content active  " detail-tab-id="product-detail-tab-content-1" id="product-detail-tab-content-1" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Set 3 đôi tất bé gái cổ ngắn</div><p><a href="https://canifa.com/catalog/product/view/id/219837/s/combo-tat-be-gai-1ax20a003/category/924/#product-detail-tab-content-3" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">HƯỚNG DẪN SỬ DỤNG</a></p><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-3" id="product-detail-tab-content-3" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Giặt máy ở chế độ nhẹ, nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chứa Clo.<br>Phơi trong bóng mát.<br>Không sử dụng máy sấy.<br>Không được là.<br>Không được giặt khô.<br>Giặt với sản phẩm cùng màu</div>', 29000, 0, 15, 0, CAST(N'2020-10-28T19:52:00' AS SmallDateTime), 1, 1, 16)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (29, 16, N'TẤT CAO CỔ NỮ', N'tat-cao-co-nu', N'aothungdaitaynam/tat-cao-co-nu.jpg', N'<p><span style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Tất cao cổ nữ</span><br></p>', 29000, 0, 15, 0, CAST(N'2020-10-28T19:54:00' AS SmallDateTime), 1, 0, 16)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (30, 16, N'TẤT NỮ CỔ NGẮN PHỐI MÀU', N'tat-nu-co-ngan-phoi-mau', N'phukien/tat-nu-co-ngan-phoi-mau.jpg', N'<p><span style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Giặt máy ở chế độ nhẹ, nhiệt độ thường</span><br style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;"><span style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Không sử dụng hóa chất tẩy có chứa clo</span><br style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;"><span style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Phơi trong bóng mát</span><br style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;"><span style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Không sử dụng máy sấy</span><br style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;"><span style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Không được là.</span><br style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;"><span style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Không được giặt khô</span><br style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;"><span style="color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Giặt với sản phẩm cùng màu</span><br></p>', 15000, 0, 45, 0, CAST(N'2020-10-28T19:55:00' AS SmallDateTime), 1, 1, 16)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (31, 16, N'CHĂN CÁ NHÂN TRƠN MÀU', N'chan-ca-nhan-tron-mau', N'phukien/chan-ca-nhan-tron-mau.jpg', N'<div class="product-detail-tab-content active  " detail-tab-id="product-detail-tab-content-1" id="product-detail-tab-content-1" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Chăn cá nhân trơn màu<br>Kích thước 120 x 180cm</div><p><a href="https://canifa.com/catalog/product/view/id/216676/s/chan-van-phong-9HE20A001/category/1783/#product-detail-tab-content-2" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">CHẤT LIỆU</a></p><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-2" id="product-detail-tab-content-2" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">80% cotton 20% polyester</div>', 190000, 19, 15, 0, CAST(N'2020-10-28T19:56:00' AS SmallDateTime), 1, 1, 16)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (32, 10, N' ÁO PHÔNG NAM  COTTON', N'-ao-phong-nam--cotton', N'aothungcotronnam/-ao-phong-nam--cotton.jpg', N'<p><a href="https://canifa.com/catalog/product/view/id/219660/s/ao-phong-nam-in-hinh-8ts20w012/category/701/#product-detail-tab-content-1" class="product-detail-tab-label" style="color: rgb(51, 63, 72); outline: none; line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">MÔ TẢ</a></p><div class="product-detail-tab-content active  " detail-tab-id="product-detail-tab-content-1" id="product-detail-tab-content-1" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Áo phông cotton USA, hình in Marvel bản quyền<br>Dáng regular, cộc tay, cổ tròn</div><p><a href="https://canifa.com/catalog/product/view/id/219660/s/ao-phong-nam-in-hinh-8ts20w012/category/701/#product-detail-tab-content-2" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">CHẤT LIỆU</a></p><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-2" id="product-detail-tab-content-2" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">100% cotton</div><p><a href="https://canifa.com/catalog/product/view/id/219660/s/ao-phong-nam-in-hinh-8ts20w012/category/701/#product-detail-tab-content-3" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">HƯỚNG DẪN SỬ DỤNG</a></p><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-3" id="product-detail-tab-content-3" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Giặt đồ ở nhiệt độ và chế độ thường<br>Lưu ý giặt với sản phẩm cùng màu<br>Tránh các chất tẩy có chứa Clo<br>Phơi trong bóng mát hoặc sấy nhẹ nhàng ở nhiệt độ thấp<br>Là ở nhiệt độ trung bình 150 độ C và không là lên chi tiết trang trí</div>', 150000, 20, 15, 0, CAST(N'2020-10-28T20:01:00' AS SmallDateTime), 1, 1, 4)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (33, 24, N'ÁO SƠ MI BÉ GÁI HỌA TIẾT KẺ CARO', N'ao-so-mi-be-gai-hoa-tiet-ke-caro', N'thoitrangtreem/ao-so-mi-be-gai-hoa-tiet-ke-caro.jpg', N'<div class="product-detail-tab-content active  " detail-tab-id="product-detail-tab-content-1" id="product-detail-tab-content-1" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Áo sơ mi cotton USA<br>Họa tiết kẻ caro, cổ tròn, dài tay<br>Dáng regular, đáp bèo hai bên thân</div><p><a href="https://canifa.com/catalog/product/view/id/219621/s/ao-kieu-be-gai-1to20w005/category/385/#product-detail-tab-content-2" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">CHẤT LIỆU</a></p><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-2" id="product-detail-tab-content-2" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">100% cotton.</div><p><a href="https://canifa.com/catalog/product/view/id/219621/s/ao-kieu-be-gai-1to20w005/category/385/#product-detail-tab-content-3" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">HƯỚNG DẪN SỬ DỤNG</a></p><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-3" id="product-detail-tab-content-3" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Giặt máy ở nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chưa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ trung bình 150 độ C.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</div>', 150000, 15, 10, 0, CAST(N'2020-10-29T10:25:00' AS SmallDateTime), 1, 1, 24)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (34, 24, N'ÁO SƠ MI BÉ GÁI', N'ao-so-mi-be-gai', N'thoitrangtreem/ao-so-mi-be-gai.jpg', N'<div class="product-detail-tab-content active  " detail-tab-id="product-detail-tab-content-1" id="product-detail-tab-content-1" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Áo sơ mi trơn, chất liệu cotton.<br>Phom regular, cổ đức, tay dài.<br>Cài khuy phía trước. Nẹp rời.<br>Đơn giản, lịch sự, phù hợp mặc nhiều hoàn cảnh.<br>Thích hợp mặc quanh năm.<br>Có thể kết hợp với quần jeans, quần khaki... với sandal, giày bệt.</div><p><a href="https://canifa.com/catalog/product/view/id/211621/s/ao-somi-be-gai-1th20s003/category/385/#product-detail-tab-content-2" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">CHẤT LIỆU</a></p><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-2" id="product-detail-tab-content-2" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">100% cotton.</div><p><a href="https://canifa.com/catalog/product/view/id/211621/s/ao-somi-be-gai-1th20s003/category/385/#product-detail-tab-content-3" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">HƯỚNG DẪN SỬ DỤNG</a></p><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-3" id="product-detail-tab-content-3" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Giặt máy ở nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ trung bình 150 độ C.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</div>', 150000, 12, 10, 0, CAST(N'2020-10-29T10:28:00' AS SmallDateTime), 1, 1, 24)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (35, 24, N'ÁO PHÔNG BÉ GÁI DISNEY CÔNG CHÚA', N'ao-phong-be-gai-disney-cong-chua', N'aothungdaitaynam/ao-phong-be-gai-disney-cong-chua.jpg', N'<div class="product-detail-tab-content active  " detail-tab-id="product-detail-tab-content-1" id="product-detail-tab-content-1" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Áo phông cotton USA<br>Hình in công chúa có bản quyền<br>Dáng regular, cổ tròn, tay dài ống rộng</div><p><a href="https://canifa.com/catalog/product/view/id/216192/s/ao-phong-be-gai-1tl20w009/category/241/#product-detail-tab-content-2" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">CHẤT LIỆU</a></p><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-2" id="product-detail-tab-content-2" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">100% cotton.</div><p><a href="https://canifa.com/catalog/product/view/id/216192/s/ao-phong-be-gai-1tl20w009/category/241/#product-detail-tab-content-3" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">HƯỚNG DẪN SỬ DỤNG</a></p><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-3" id="product-detail-tab-content-3" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Giặt máy ở chế độ nhẹ, nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chứa Clo.<br>Phơi trong bóng mát.<br>Sấy thùng, chế độ nhẹ nhàng.<br>Là ở nhiệt độ trung bình 150 độ C.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</div>', 199000, 10, 10, 0, CAST(N'2020-10-29T10:30:00' AS SmallDateTime), 1, 1, 24)
INSERT [dbo].[Product] ([ID], [catid], [name], [slug], [img], [detail], [price], [pricesale], [number], [sold], [created_at], [created_by], [status], [Subcategory]) VALUES (36, 24, N'QUẦN SOÓC BÉ GÁI', N'quan-sooc-be-gai', N'thoitrangtreem/quan-sooc-be-gai.jpg', N'<div class="product-detail-tab-content active  " detail-tab-id="product-detail-tab-content-1" id="product-detail-tab-content-1" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Quần sóoc trơn, chất liệu denim vân chéo cotton.<br>Phom regular, dáng cộc.<br>Cạp cao chun. Gấu lơ-vê.</div><p><a href="https://canifa.com/catalog/product/view/id/210920/s/quan-sooc-be-gai-1bs20c001/category/898/#product-detail-tab-content-5" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">HOÀN CẢNH SỬ DỤNG</a></p><div class="product-detail-tab-content   " detail-tab-id="product-detail-tab-content-5" id="product-detail-tab-content-5" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Đơn giản, thoải mái, phù hợp nhiều hoàn cảnh.<br>Thích hợp mặc quanh năm.<br>Kết hợp với áo phông…với sandal, giày thể thao…</div><p><a href="https://canifa.com/catalog/product/view/id/210920/s/quan-sooc-be-gai-1bs20c001/category/898/#product-detail-tab-content-2" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">CHẤT LIỆU</a></p><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-2" id="product-detail-tab-content-2" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">100% cotton.</div><p><a href="https://canifa.com/catalog/product/view/id/210920/s/quan-sooc-be-gai-1bs20c001/category/898/#product-detail-tab-content-3" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">HƯỚNG DẪN SỬ DỤNG</a></p><div class="product-detail-tab-content " detail-tab-id="product-detail-tab-content-3" id="product-detail-tab-content-3" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Giặt máy ở nhiệt độ thường.<br>Không sử dụng hoá chất tẩy.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ trung bình 150 độ C.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</div><p><a href="https://canifa.com/catalog/product/view/id/210920/s/quan-sooc-be-gai-1bs20c001/category/898/#product-detail-tab-content-4" class="product-detail-tab-label" style="color: rgb(51, 63, 72); line-height: 13px; display: block; margin-bottom: 12px; text-transform: uppercase; font-size: 12px; font-family: Montserrat, sans-serif; background-color: rgb(255, 255, 255);">THÔNG SỐ NGƯỜI MẪU</a></p><div class="product-detail-tab-content product-detail-tab--thong-so " detail-tab-id="product-detail-tab-content-4" id="product-detail-tab-content-4" style="line-height: 19px; margin-bottom: 30px; color: rgb(51, 63, 72); font-family: Montserrat, sans-serif; font-size: 12px;">Cân nặng: ~19Kg<br>Mặc quần size: 110</div>', 379000, 20, 10, 0, CAST(N'2020-10-29T10:31:00' AS SmallDateTime), 1, 1, 24)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (1, 0, N'ADMIN', N'Quản trị viên Full quyền', N'ADMIN')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (2, 1, N'CUSTOMER', N'Khách hàng', N'CUSTOMER')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (3, 2, N'ACCOUNTANT', N'Kế toán, thống kê', N'ACCOUNTANT')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (7, 3, N'9233110/22/2020 10:37:11 AM', N'Nhân viên bán hàng', N'SALESMAN')
SET IDENTITY_INSERT [dbo].[role] OFF
SET IDENTITY_INSERT [dbo].[slider] ON 

INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Slider1', N'slider1', N'SliderShow', N'banner1.jpg', 3, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-27T19:31:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (2, N'Slider2', N'slider2', N'SliderShow', N'banner2.jpg', 2, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-27T19:31:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (3, N'Slider3', N'slider3', N'SliderShow', N'banner3.jpg', 1, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-27T19:31:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[slider] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Luu Tung Lam', N'admin', N'4QrcOUm6Wau+VuBX8g+IPg==', N'luutunglam@gmail.com', N'Nam', NULL, N'0975271384', N'ádasd', 0, CAST(N'2020-10-23T23:09:00' AS SmallDateTime), 1, CAST(N'2020-10-23T23:09:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'Khách hàng', N'khachhang1dasdasd', N'4QrcOUm6Wau+VuBX8g+IPg==', N'luutunglam@gmail.com', N'Nam', N'105 lê văn việt, quận 9, TP.HCM', N'0975271384', NULL, 0, CAST(N'2020-05-10T15:54:00' AS SmallDateTime), 6, CAST(N'2020-07-26T16:43:00' AS SmallDateTime), 6, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (8, N'Khách hàng', N'khachhang131', N'4QrcOUm6Wau+VuBX8g+IPg==', N'luutunglam@gmail.com', N'Nam', N'105 lê văn việt, quận 9, TP.HCM', N'0975271384', N'ádasd', 1, CAST(N'2020-05-08T16:43:00' AS SmallDateTime), 1, CAST(N'2020-11-02T10:13:00' AS SmallDateTime), 8, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (11, N'Kế toán', N'Accountant', N'4QrcOUm6Wau+VuBX8g+IPg==', N'luutunglam@gmail.com', N'nu', N'105 lê văn việt, quận 9, TP.HCM', N'0975271384', N'132121', 2, CAST(N'2020-05-07T00:00:00' AS SmallDateTime), 1, CAST(N'2020-05-07T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (13, N'bán hàng', N'Salesman', N'4QrcOUm6Wau+VuBX8g+IPg==', N'luutunglam@gmail.com', N'nu', N'105 lê văn việt, quận 9, TP.HCM', N'0975271384', N'dád', 3, CAST(N'2020-05-07T00:00:00' AS SmallDateTime), 1, CAST(N'2020-05-07T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (14, N'nguyuendddddddddddd', N'khachhang123', N'4QrcOUm6Wau+VuBX8g+IPg==', N'luutunglam@gmail.com', N'Nam', N'105 lê văn việt, quận 9, TP.HCM', N'0975271384', N'ádasd', 2, CAST(N'2020-05-08T16:49:00' AS SmallDateTime), 1, CAST(N'2020-05-08T16:49:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (15, N'ddddddddddddddddd', N'khachhang112', N'i5YoL5fbmnteeBT/9l4G1A==', N'luutunglam@gmail.com', N'nam', N'105 lê văn việt, quận 9, TP.HCM', N'0975271384', N'defalt.png', 1, CAST(N'2020-06-12T09:45:00' AS SmallDateTime), 1, CAST(N'2020-06-12T09:45:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (16, N'admin1', N'khachhang112', N'admin1', N'luutunglam@gmail.com', N'nam', N'105 lê văn việt, quận 9, TP.HCM', N'0975271384', N'defalt.png', 1, CAST(N'2020-06-12T09:45:00' AS SmallDateTime), 1, CAST(N'2020-06-12T09:45:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (17, N'Dương Minh Hưng', N'khachhang12334', N'aY1RoZ2KEhzlgUmde3AWaA==', N'hungdu222ong.10c5@gmail.com', N'nam', N'111', N'111', N'defalt.png', 1, CAST(N'2020-10-29T20:27:00' AS SmallDateTime), 1, CAST(N'2020-10-29T20:27:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (18, N'Dương Minh Hưng', N'khachhang123', N'xMpCOKC5I4INzFCab3WEmw==', N'hung121113@gmail.com', N'nam', N'1', N'1', N'defalt.png', 1, CAST(N'2020-10-29T20:29:00' AS SmallDateTime), 1, CAST(N'2020-10-29T20:29:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (19, N'Dương Minh Hưng', N'admin1', N'j2DIEC0p/NUlFi0C7tRWaw==', N'hantinsssshonline209@gmail.com', N'nam', N'sssssssss', N'sss', N'defalt.png', 1, CAST(N'2020-10-29T20:38:00' AS SmallDateTime), 1, CAST(N'2020-10-29T20:38:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[user] OFF
