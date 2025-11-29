CREATE PROCEDURE [dbo].[DW_MergeFactSales]
AS
BEGIN

	UPDATE fs
	SET [TitleSK] =ss.[TitleSK]
	   ,[AuthorSK] = ss.[AuthorSK]
	   ,[PublisherSK] = ss.[PublisherSK]
	   ,[StoreSK] = ss.[StoreSK]
	   ,[DateKey] = ss.[DateKey]
	   ,[Quantity] = ss.[Quantity]
	   ,[UnitPrice] = ss.[UnitPrice]
	   ,[TotalAmount] = ss.[TotalAmount]

	FROM [dbo].FactSales fs
	INNER JOIN [staging].sales ss ON (fs.SaleSK = ss.SaleSK)
END
GO