PRINT 'Populating discounts table';
SET NOCOUNT ON;

SET IDENTITY_INSERT dbo.[discounts] ON;  

INSERT INTO [dbo].[discounts] ([discounttype], [stor_id], [lowqty], [highqty], [discount]) VALUES (N'Initial Customer', NULL, NULL, NULL, CAST(10.50 AS Decimal(4, 2)))
GO
INSERT INTO [dbo].[discounts] ([discounttype], [stor_id], [lowqty], [highqty], [discount]) VALUES (N'Volume Discount', NULL, 100, 1000, CAST(6.70 AS Decimal(4, 2)))
GO
INSERT INTO [dbo].[discounts] ([discounttype], [stor_id], [lowqty], [highqty], [discount]) VALUES (N'Customer Discount', N'8042', NULL, NULL, CAST(5.00 AS Decimal(4, 2)))
GO

SET IDENTITY_INSERT dbo.[discounts] OFF;