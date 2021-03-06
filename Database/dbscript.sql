USE [ProjectC#]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/11/2020 11:38:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [varchar](11) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Status] [varchar](15) NOT NULL,
	[RoleID] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 11/11/2020 11:38:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [varchar](5) NOT NULL,
	[BrandName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 11/11/2020 11:38:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [varchar](5) NOT NULL,
	[CartName] [nvarchar](50) NOT NULL,
	[Username] [varchar](20) NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[Payment] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](200) NOT NULL DEFAULT ('H? Chí Minh'),
	[Total] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CartDetail]    Script Date: 11/11/2020 11:38:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CartDetail](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[IDProduct] [varchar](5) NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[CartID] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/11/2020 11:38:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [varchar](5) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/11/2020 11:38:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[IDProduct] [varchar](5) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Status] [nvarchar](15) NOT NULL,
	[BrandID] [varchar](5) NOT NULL,
	[CategoryID] [varchar](5) NOT NULL,
	[Image] [varchar](500) NOT NULL DEFAULT ('https://previews.123rf.com/images/doomko/doomko1508/doomko150800003/43683599-fun-mobile-phone-cartoon-with-thumbs-up.jpg'),
PRIMARY KEY CLUSTERED 
(
	[IDProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/11/2020 11:38:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [varchar](5) NOT NULL,
	[RoleName] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Account] ([Username], [Password], [FullName], [PhoneNumber], [Address], [DateOfBirth], [Status], [RoleID]) VALUES (N'buivinhkhoi', N'123456789', N'Bùi Vĩnh Khôi', N'0312546212', N'Quận 8', CAST(N'2000-11-05' AS Date), N'Availble', N'2')
INSERT [dbo].[Account] ([Username], [Password], [FullName], [PhoneNumber], [Address], [DateOfBirth], [Status], [RoleID]) VALUES (N'huavinhkhang', N'123456789', N'Hứa Vĩnh Khang', N'0961101399', N'QUận 2', CAST(N'2000-06-03' AS Date), N'Available', N'1')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'1', N'Samsung')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'2', N'Apple')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'3', N'Oppo')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'4', N'Xiaomi')
INSERT [dbo].[Cart] ([CartID], [CartName], [Username], [CreatedDate], [Status], [Payment], [Address], [Total]) VALUES (N'1', N'Cart of Bùi Vĩnh Khôi', N'buivinhkhoi', CAST(N'2020-10-31' AS Date), N'Waiting', N'COD', N'HoChiMinh City', 64000000)
INSERT [dbo].[Cart] ([CartID], [CartName], [Username], [CreatedDate], [Status], [Payment], [Address], [Total]) VALUES (N'2', N'Cart of Bùi Vĩnh Khôi', N'buivinhkhoi', CAST(N'2020-10-31' AS Date), N'Waiting', N'COD', N'HoChiMinh City', 80000000)
INSERT [dbo].[Cart] ([CartID], [CartName], [Username], [CreatedDate], [Status], [Payment], [Address], [Total]) VALUES (N'3', N'Cart of Bùi Vĩnh Khôi', N'buivinhkhoi', CAST(N'2020-10-31' AS Date), N'Waiting', N'COD', N'HoChiMinh City', 77000000)
INSERT [dbo].[Cart] ([CartID], [CartName], [Username], [CreatedDate], [Status], [Payment], [Address], [Total]) VALUES (N'4', N'Cart of Bùi Vĩnh Khôi', N'buivinhkhoi', CAST(N'2020-11-04' AS Date), N'Waiting', N'COD', N'Petshop', 96000000)
INSERT [dbo].[Cart] ([CartID], [CartName], [Username], [CreatedDate], [Status], [Payment], [Address], [Total]) VALUES (N'5', N'Cart of Bùi Vĩnh Khôi', N'buivinhkhoi', CAST(N'2020-11-04' AS Date), N'Waiting', N'COD', N'HoChiMinh City', 177000000)
SET IDENTITY_INSERT [dbo].[CartDetail] ON 

INSERT [dbo].[CartDetail] ([DetailID], [IDProduct], [Quantity], [Price], [CartID]) VALUES (1, N'1', 2, 16000000, N'1')
INSERT [dbo].[CartDetail] ([DetailID], [IDProduct], [Quantity], [Price], [CartID]) VALUES (2, N'4', 1, 32000000, N'1')
INSERT [dbo].[CartDetail] ([DetailID], [IDProduct], [Quantity], [Price], [CartID]) VALUES (3, N'1', 3, 16000000, N'2')
INSERT [dbo].[CartDetail] ([DetailID], [IDProduct], [Quantity], [Price], [CartID]) VALUES (4, N'4', 1, 32000000, N'2')
INSERT [dbo].[CartDetail] ([DetailID], [IDProduct], [Quantity], [Price], [CartID]) VALUES (5, N'3', 3, 20000000, N'3')
INSERT [dbo].[CartDetail] ([DetailID], [IDProduct], [Quantity], [Price], [CartID]) VALUES (6, N'5', 1, 17000000, N'3')
INSERT [dbo].[CartDetail] ([DetailID], [IDProduct], [Quantity], [Price], [CartID]) VALUES (7, N'1', 2, 16000000, N'4')
INSERT [dbo].[CartDetail] ([DetailID], [IDProduct], [Quantity], [Price], [CartID]) VALUES (8, N'4', 2, 32000000, N'4')
INSERT [dbo].[CartDetail] ([DetailID], [IDProduct], [Quantity], [Price], [CartID]) VALUES (9, N'1', 10, 16000000, N'5')
INSERT [dbo].[CartDetail] ([DetailID], [IDProduct], [Quantity], [Price], [CartID]) VALUES (10, N'5', 1, 17000000, N'5')
SET IDENTITY_INSERT [dbo].[CartDetail] OFF
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (N'1', N'Phone')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (N'2', N'Tablet')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (N'3', N'Accessory')
INSERT [dbo].[Product] ([IDProduct], [ProductName], [Quantity], [Price], [Status], [BrandID], [CategoryID], [Image]) VALUES (N'1', N'Samsung Galaxy S9', 90, 16000000, N'Available', N'1', N'1', N'https://viostore.vn/wp-content/uploads/2018/05/samsung-galaxy-s9-plus-g965fd-dual-sim-4g-vvw8fd.jpg')
INSERT [dbo].[Product] ([IDProduct], [ProductName], [Quantity], [Price], [Status], [BrandID], [CategoryID], [Image]) VALUES (N'2', N'Iphone 11', 100, 33000000, N'Available', N'1', N'1', N'https://didongviet.vn/pub/media/catalog/product/i/p/iphone-11-64gb-chinh-hang_1_1.jpg')
INSERT [dbo].[Product] ([IDProduct], [ProductName], [Quantity], [Price], [Status], [BrandID], [CategoryID], [Image]) VALUES (N'3', N'Samsung Galaxy S10', 97, 20000000, N'Available', N'1', N'1', N'https://fptshop.com.vn/Uploads/Originals/2019/2/21/636863621214675213_ss-galaxy-s10-den-1.png')
INSERT [dbo].[Product] ([IDProduct], [ProductName], [Quantity], [Price], [Status], [BrandID], [CategoryID], [Image]) VALUES (N'4', N'Iphone 12', 97, 32000000, N'Available', N'2', N'1', N'https://cdn.tgdd.vn/Products/Images/42/213033/iphone-12-pro-max-600x600.jpg')
INSERT [dbo].[Product] ([IDProduct], [ProductName], [Quantity], [Price], [Status], [BrandID], [CategoryID], [Image]) VALUES (N'5', N'Iphone 9', 148, 17000000, N'Available', N'2', N'1', N'https://img.docbao.vn/images/uploads/2019/12/07/hitech/iphone-9.jpg')
INSERT [dbo].[Product] ([IDProduct], [ProductName], [Quantity], [Price], [Status], [BrandID], [CategoryID], [Image]) VALUES (N'6', N'Oppo a73', 160, 15000000, N'Available', N'3', N'1', N'https://gsmorigin.com/wp-content/uploads/2017/12/Oppo-A73-425x425.jpg')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (N'1', N'Admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (N'2', N'Member')
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Account] ([Username])
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD FOREIGN KEY([CartID])
REFERENCES [dbo].[Cart] ([CartID])
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD FOREIGN KEY([IDProduct])
REFERENCES [dbo].[Product] ([IDProduct])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
