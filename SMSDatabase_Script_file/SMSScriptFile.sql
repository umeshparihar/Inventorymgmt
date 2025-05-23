USE [SMS]
GO
/****** Object:  Table [dbo].[PaymentMode]   ***/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMode](
	[paymentID] [nchar](4) NOT NULL,
	[payment_type] [nchar](20) NULL,
 CONSTRAINT [PK_Payment Mode] PRIMARY KEY CLUSTERED 
(
	[paymentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PaymentMode] ([paymentID], [payment_type]) VALUES (N'mod1', N'Cash                ')
INSERT [dbo].[PaymentMode] ([paymentID], [payment_type]) VALUES (N'mod2', N'Check | D D         ')
INSERT [dbo].[PaymentMode] ([paymentID], [payment_type]) VALUES (N'mod3', N'Credit | Debit Card ')
/****** Object:  Table [dbo].[Dealers]   ***/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dealers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dealerid] [nchar](10) NOT NULL,
	[dealername] [nvarchar](30) NULL,
	[dealerhouseno] [nvarchar](25) NULL,
	[dealerstreetname] [nvarchar](50) NULL,
	[dealerarea] [nvarchar](25) NULL,
	[dealerlandmark] [nvarchar](50) NULL,
	[dealercity] [nvarchar](25) NULL,
	[dealerstate] [nvarchar](20) NULL,
	[dealerpincode] [nvarchar](50) NULL,
	[dealercontactno] [nvarchar](50) NULL,
	[dealerlandlineno] [nvarchar](50) NULL,
	[dealership_since] [nvarchar](50) NULL,
 CONSTRAINT [PK_Dealers] PRIMARY KEY CLUSTERED 
(
	[dealerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dealers] ON
INSERT [dbo].[Dealers] ([id], [dealerid], [dealername], [dealerhouseno], [dealerstreetname], [dealerarea], [dealerlandmark], [dealercity], [dealerstate], [dealerpincode], [dealercontactno], [dealerlandlineno], [dealership_since]) VALUES (8, N'DL1       ', N'Pasha', N'Door 1', N'machi', N'musheerabad', N'fish market', N'hyderabad', N'telangana', N'123456', N'9876543210', N'040-23452345', N'5/20/2015')
INSERT [dbo].[Dealers] ([id], [dealerid], [dealername], [dealerhouseno], [dealerstreetname], [dealerarea], [dealerlandmark], [dealercity], [dealerstate], [dealerpincode], [dealercontactno], [dealerlandlineno], [dealership_since]) VALUES (2, N'DL10001   ', N'Danush', N'Door no 10', N'Anna Nagar Colony', N'Anna Nagar', N'Beside Anna Nagar Community Hall', N'Chennai', N'TamilNadu', N'123456', N'9876543210', N'040-23452345', N'5/20/2015')
INSERT [dbo].[Dealers] ([id], [dealerid], [dealername], [dealerhouseno], [dealerstreetname], [dealerarea], [dealerlandmark], [dealercity], [dealerstate], [dealerpincode], [dealercontactno], [dealerlandlineno], [dealership_since]) VALUES (3, N'DL10002   ', N'Ramesh', N'plat no 11', N'btm street 11', N'btm 3nd phase', N'btm home super market', N'banglore', N'karnataka', N'567001', N'1234556789', N'080-12345678', N'5/20/2015')
INSERT [dbo].[Dealers] ([id], [dealerid], [dealername], [dealerhouseno], [dealerstreetname], [dealerarea], [dealerlandmark], [dealercity], [dealerstate], [dealerpincode], [dealercontactno], [dealerlandlineno], [dealership_since]) VALUES (6, N'DL1003    ', N'Karan', N'plat 10', N'btn', N'btm', N'btm watertank', N'banglore', N'karnataka', N'123456', N'9876543210', N'080-12345678', N'5/20/2015')
INSERT [dbo].[Dealers] ([id], [dealerid], [dealername], [dealerhouseno], [dealerstreetname], [dealerarea], [dealerlandmark], [dealercity], [dealerstate], [dealerpincode], [dealercontactno], [dealerlandlineno], [dealership_since]) VALUES (7, N'DL1111    ', N'Srikanth', N'11-3-357/20/11', N'parsigutta', N'secunderabad', N'opp. vignan public hs', N'hyderabad', N'telangana', N'500001', N'9876543211', N'040-23452345', N'5/20/2015')
INSERT [dbo].[Dealers] ([id], [dealerid], [dealername], [dealerhouseno], [dealerstreetname], [dealerarea], [dealerlandmark], [dealercity], [dealerstate], [dealerpincode], [dealercontactno], [dealerlandlineno], [dealership_since]) VALUES (9, N'DL2       ', N'Avinash', N'Door no 10', N'Anna Nagar Colony', N'Anna Nagar', N'Beside Anna Nagar Community Hall', N'Chennai', N'TamilNadu', N'123456', N'9876543210', N'040-23452345', N'5/20/2015')
INSERT [dbo].[Dealers] ([id], [dealerid], [dealername], [dealerhouseno], [dealerstreetname], [dealerarea], [dealerlandmark], [dealercity], [dealerstate], [dealerpincode], [dealercontactno], [dealerlandlineno], [dealership_since]) VALUES (10, N'DL20      ', N'Darmendhar', N'plat no 100', N'mumbai', N'mumbai anderi', N'opp. shk house', N'mumbai', N'maharastra', N'300001', N'4433221166', N'04004004009', N'5/22/2015')
INSERT [dbo].[Dealers] ([id], [dealerid], [dealername], [dealerhouseno], [dealerstreetname], [dealerarea], [dealerlandmark], [dealercity], [dealerstate], [dealerpincode], [dealercontactno], [dealerlandlineno], [dealership_since]) VALUES (1, N'DL234     ', N'Ramesh', N'parsiguta', NULL, NULL, NULL, N'Hyderabad', N'Telangana', N'500001    ', N'1234567890     ', N'040-23435678             ', N'2004              ')
SET IDENTITY_INSERT [dbo].[Dealers] OFF
/****** Object:  Table [dbo].[Category]   ***/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryid] [nchar](10) NOT NULL,
	[categoryname] [nvarchar](30) NULL,
	[category_did] [nchar](10) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([id], [categoryid], [categoryname], [category_did]) VALUES (1, N'CAT1000001', N'Pharmaceutical', N'          ')
INSERT [dbo].[Category] ([id], [categoryid], [categoryname], [category_did]) VALUES (2, N'CAT1000002', N'Stationary', N'DL10002   ')
INSERT [dbo].[Category] ([id], [categoryid], [categoryname], [category_did]) VALUES (3, N'CAT1000003', N'Automobiles', N'DL1111    ')
INSERT [dbo].[Category] ([id], [categoryid], [categoryname], [category_did]) VALUES (4, N'CAT1000004', N'Electronics', N'DL1003    ')
INSERT [dbo].[Category] ([id], [categoryid], [categoryname], [category_did]) VALUES (5, N'CAT1000005', N'Software', N'DL1003    ')
INSERT [dbo].[Category] ([id], [categoryid], [categoryname], [category_did]) VALUES (6, N'CAT1000006', N'Mobile', N'DL1111    ')
INSERT [dbo].[Category] ([id], [categoryid], [categoryname], [category_did]) VALUES (7, N'CAT1000007', N'Food', N'DL10001   ')
INSERT [dbo].[Category] ([id], [categoryid], [categoryname], [category_did]) VALUES (8, N'CAT1000008', N'Mobile accessories', N'DL1111    ')
INSERT [dbo].[Category] ([id], [categoryid], [categoryname], [category_did]) VALUES (10, N'CAT1000009', N'Medical Surgical Equipment', N'DL10001   ')
INSERT [dbo].[Category] ([id], [categoryid], [categoryname], [category_did]) VALUES (12, N'CAT1000010', N'Electronics', N'DL10002   ')
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[Product]   ***/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[prod_id] [nchar](10) NOT NULL,
	[prod_name] [nvarchar](50) NULL,
	[prod_comp_name] [nvarchar](100) NULL,
	[prod_manu_date] [nchar](20) NULL,
	[prod_manu_exp_date] [nchar](20) NULL,
	[prod_item_serial_no] [nchar](20) NULL,
	[prod_item_batch_no] [nchar](20) NULL,
	[prod_item_cost] [nchar](10) NULL,
	[prod_item_quantity] [nchar](5) NULL,
	[prod_item_categoryid] [nchar](10) NULL,
	[prod_item_dealerid] [nchar](10) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[prod_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([id], [prod_id], [prod_name], [prod_comp_name], [prod_manu_date], [prod_manu_exp_date], [prod_item_serial_no], [prod_item_batch_no], [prod_item_cost], [prod_item_quantity], [prod_item_categoryid], [prod_item_dealerid]) VALUES (11, N'prod100001', N'Laptop', N'Dell', N'5/20/2014           ', N'5/20/2016           ', N'563736474841        ', N'23123               ', N'30000     ', N'120  ', N'CAT1000004', N'DL1003    ')
INSERT [dbo].[Product] ([id], [prod_id], [prod_name], [prod_comp_name], [prod_manu_date], [prod_manu_exp_date], [prod_item_serial_no], [prod_item_batch_no], [prod_item_cost], [prod_item_quantity], [prod_item_categoryid], [prod_item_dealerid]) VALUES (12, N'prod100002', N'Samsung S4', N'Samsung', N'20/04/2013          ', N'19/04/2016          ', N'87654321098         ', N'23123               ', N'27450     ', N'100  ', N'CAT1000006', N'DL1111    ')
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[Customer]   ***/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[custID] [nchar](25) NOT NULL,
	[cust_create_date] [nchar](20) NULL,
	[custname] [nvarchar](25) NULL,
	[custphone] [nchar](15) NULL,
	[custaddress] [nvarchar](300) NULL,
	[cust_prod_id] [nchar](10) NULL,
	[cust_prod_cat_id] [nchar](10) NULL,
	[cust_prod_cost] [nchar](10) NULL,
	[cust_prod_quantity] [nchar](3) NULL,
	[cust_pay_mode] [nchar](4) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[custID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([id], [custID], [cust_create_date], [custname], [custphone], [custaddress], [cust_prod_id], [cust_prod_cat_id], [cust_prod_cost], [cust_prod_quantity], [cust_pay_mode]) VALUES (2, N'Cust05272015234316325    ', N'5/27/2015           ', N'', N'               ', N'Door no 10,
Ramanujan Colony,
RamNagar
Musheerabad
Hyderabad
Talangana
Pin - 500001', N'prod100002', N'CAT1000006', N'27450     ', N'8  ', N'mod1')
INSERT [dbo].[Customer] ([id], [custID], [cust_create_date], [custname], [custphone], [custaddress], [cust_prod_id], [cust_prod_cat_id], [cust_prod_cost], [cust_prod_quantity], [cust_pay_mode]) VALUES (4, N'Cust06032015112432574    ', N'6/3/2015            ', N'Krrish', N'8765234598     ', N'Mumbai,
Maharastra', N'prod100002', N'CAT1000006', N'27450     ', N'20 ', N'mod1')
INSERT [dbo].[Customer] ([id], [custID], [cust_create_date], [custname], [custphone], [custaddress], [cust_prod_id], [cust_prod_cat_id], [cust_prod_cost], [cust_prod_quantity], [cust_pay_mode]) VALUES (5, N'Cust06042015120405023    ', N'6/4/2015            ', N'Kiran', N'8798432410     ', N'BTM
Banglore', N'prod100001', N'CAT1000004', N'30000     ', N'15 ', N'mod2')
INSERT [dbo].[Customer] ([id], [custID], [cust_create_date], [custname], [custphone], [custaddress], [cust_prod_id], [cust_prod_cat_id], [cust_prod_cost], [cust_prod_quantity], [cust_pay_mode]) VALUES (7, N'Cust06042015125059236    ', N'6/4/2015            ', N'Pratap Reddy', N'7654987523     ', N'Anna Nagar, Chennai, Tamil Nadu, 450982,', N'prod100002', N'CAT1000006', N'27450     ', N'23 ', N'mod2')
INSERT [dbo].[Customer] ([id], [custID], [cust_create_date], [custname], [custphone], [custaddress], [cust_prod_id], [cust_prod_cat_id], [cust_prod_cost], [cust_prod_quantity], [cust_pay_mode]) VALUES (8, N'Cust06042015193144863    ', N'6/4/2015            ', N'Pankaj Arora', N'9876567801     ', N'Kavadiguda,
Secunderabad,
Praga tools Hyderabad, 
Pin code : 500012', N'prod100002', N'CAT1000006', N'27450     ', N'10 ', N'mod1')
INSERT [dbo].[Customer] ([id], [custID], [cust_create_date], [custname], [custphone], [custaddress], [cust_prod_id], [cust_prod_cat_id], [cust_prod_cost], [cust_prod_quantity], [cust_pay_mode]) VALUES (9, N'Cust06042015230232643    ', N'6/4/2015            ', N'Vikas', N'9985203060     ', N'Dilsuknagar,
Hyderabad', N'prod100001', N'CAT1000004', N'30000     ', N'30 ', N'mod2')
INSERT [dbo].[Customer] ([id], [custID], [cust_create_date], [custname], [custphone], [custaddress], [cust_prod_id], [cust_prod_cat_id], [cust_prod_cost], [cust_prod_quantity], [cust_pay_mode]) VALUES (10, N'Cust06042015230530500    ', N'6/4/2015            ', N'Karthik Reddy', N'1234567890     ', N'Kundana Halli,
Banglore', N'prod100001', N'CAT1000004', N'30000     ', N'12 ', N'mod1')
INSERT [dbo].[Customer] ([id], [custID], [cust_create_date], [custname], [custphone], [custaddress], [cust_prod_id], [cust_prod_cat_id], [cust_prod_cost], [cust_prod_quantity], [cust_pay_mode]) VALUES (11, N'Cust06042015230736425    ', N'6/4/2015            ', N'Kasim Sheid', N'8837773        ', N'djfksjfdksdj', N'prod100002', N'CAT1000006', N'27450     ', N'10 ', N'mod1')
INSERT [dbo].[Customer] ([id], [custID], [cust_create_date], [custname], [custphone], [custaddress], [cust_prod_id], [cust_prod_cat_id], [cust_prod_cost], [cust_prod_quantity], [cust_pay_mode]) VALUES (12, N'Cust20150605120757799    ', N'6/5/2015            ', N'Arthi Agarwal', N'9998887773     ', N'USA', N'prod100001', N'CAT1000004', N'30000     ', N'10 ', N'mod1')
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[Payment]   ***/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cust_payID] [nchar](25) NOT NULL,
	[custID] [nchar](25) NULL,
	[date] [nchar](10) NULL,
	[cust_pay_mode] [nchar](4) NULL,
	[cust_bankname_creditcardno] [nvarchar](250) NULL,
	[cust_checkno_trnxno] [nchar](15) NULL,
	[cust_amount] [nchar](10) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[cust_payID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Payment] ON
INSERT [dbo].[Payment] ([id], [cust_payID], [custID], [date], [cust_pay_mode], [cust_bankname_creditcardno], [cust_checkno_trnxno], [cust_amount]) VALUES (1, N'P05272015234514424       ', N'Cust05272015234316325    ', N'5/27/2015 ', N'mod1', N'', N'               ', N'219600    ')
INSERT [dbo].[Payment] ([id], [cust_payID], [custID], [date], [cust_pay_mode], [cust_bankname_creditcardno], [cust_checkno_trnxno], [cust_amount]) VALUES (2, N'P05272015234643679       ', N'Cust05272015234316325    ', N'5/27/2015 ', N'mod1', N'', N'               ', N'219600    ')
INSERT [dbo].[Payment] ([id], [cust_payID], [custID], [date], [cust_pay_mode], [cust_bankname_creditcardno], [cust_checkno_trnxno], [cust_amount]) VALUES (3, N'P06032015113628308       ', N'Cust06032015112432574    ', N'6/3/2015  ', N'mod1', N'', N'               ', N'54915379  ')
INSERT [dbo].[Payment] ([id], [cust_payID], [custID], [date], [cust_pay_mode], [cust_bankname_creditcardno], [cust_checkno_trnxno], [cust_amount]) VALUES (4, N'P06042015124901328       ', N'Cust06042015120405023    ', N'6/4/2015  ', N'mod2', N'State Bank of Hyderabad, Ramnagar, Musheerabad, Hyderabad, PinCode - 500001', N'101244         ', N'400000    ')
INSERT [dbo].[Payment] ([id], [cust_payID], [custID], [date], [cust_pay_mode], [cust_bankname_creditcardno], [cust_checkno_trnxno], [cust_amount]) VALUES (5, N'P06042015125242369       ', N'Cust06042015125059236    ', N'6/4/2015  ', N'mod2', N'State Bank of Hyderabad, Ramnagar, Musheerabad, Hyderabad, PinCode - 500001', N'101244         ', N'400000    ')
INSERT [dbo].[Payment] ([id], [cust_payID], [custID], [date], [cust_pay_mode], [cust_bankname_creditcardno], [cust_checkno_trnxno], [cust_amount]) VALUES (6, N'P06042015194135315       ', N'Cust06042015193144863    ', N'6/4/2015  ', N'mod1', N'', N'               ', N'210000    ')
INSERT [dbo].[Payment] ([id], [cust_payID], [custID], [date], [cust_pay_mode], [cust_bankname_creditcardno], [cust_checkno_trnxno], [cust_amount]) VALUES (7, N'P06042015230353328       ', N'Cust06042015230232643    ', N'6/4/2015  ', N'mod2', N'State Bank of Hyderabad, Ramnagar, Musheerabad, Hyderabad, PinCode - 500001', N'101244         ', N'400000    ')
INSERT [dbo].[Payment] ([id], [cust_payID], [custID], [date], [cust_pay_mode], [cust_bankname_creditcardno], [cust_checkno_trnxno], [cust_amount]) VALUES (8, N'P06042015230631596       ', N'Cust06042015230530500    ', N'6/4/2015  ', N'mod1', N'', N'               ', N'300000    ')
INSERT [dbo].[Payment] ([id], [cust_payID], [custID], [date], [cust_pay_mode], [cust_bankname_creditcardno], [cust_checkno_trnxno], [cust_amount]) VALUES (9, N'P06042015230805534       ', N'Cust06042015230736425    ', N'6/4/2015  ', N'mod1', N'', N'               ', N'250000    ')
INSERT [dbo].[Payment] ([id], [cust_payID], [custID], [date], [cust_pay_mode], [cust_bankname_creditcardno], [cust_checkno_trnxno], [cust_amount]) VALUES (10, N'P20150605120850829       ', N'Cust20150605120757799    ', N'6/5/2015  ', N'mod1', N'', N'               ', N'250000    ')
SET IDENTITY_INSERT [dbo].[Payment] OFF
/****** Object:  ForeignKey [FK_Product_Dealers]   ***/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Dealers] FOREIGN KEY([prod_item_dealerid])
REFERENCES [dbo].[Dealers] ([dealerid])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Dealers]
GO
/****** Object:  ForeignKey [FK_Product_Product]   ***/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Product] FOREIGN KEY([prod_id])
REFERENCES [dbo].[Product] ([prod_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Product]
GO
/****** Object:  ForeignKey [FK_Payment_Customer]   ***/
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Customer] FOREIGN KEY([custID])
REFERENCES [dbo].[Customer] ([custID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Customer]
GO
/****** Object:  ForeignKey [FK_Payment_Payment Mode]   ***/
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Payment Mode] FOREIGN KEY([cust_pay_mode])
REFERENCES [dbo].[PaymentMode] ([paymentID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Payment Mode]
GO
/****** Object:  ForeignKey [FK_Cust_PaymentMode]   ***/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Cust_PaymentMode] FOREIGN KEY([cust_pay_mode])
REFERENCES [dbo].[PaymentMode] ([paymentID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Cust_PaymentMode]
GO
/****** Object:  ForeignKey [FK_Customer_Category]   ***/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Category] FOREIGN KEY([cust_prod_cat_id])
REFERENCES [dbo].[Category] ([categoryid])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Category]
GO
/****** Object:  ForeignKey [FK_Customer_Customer]   ***/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Customer] FOREIGN KEY([custID])
REFERENCES [dbo].[Customer] ([custID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Customer]
GO
/****** Object:  ForeignKey [FK_Customer_Product]   ***/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Product] FOREIGN KEY([cust_prod_id])
REFERENCES [dbo].[Product] ([prod_id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Product]
GO
