CREATE PROCEDURE [dbo].[DW_MergeDimStores]
AS
BEGIN

	UPDATE ds
	SET [stor_id] =ss.[stor_id]
	   ,[storeName] = ss.[storeName]
	   ,[city] = ss.city
	   ,[state] = ss.[state]
	   ,[zip] = ss.[zip]
	FROM [dbo].DimStores ds
	INNER JOIN [staging].stores ss ON (ds.StoreSK = ss.StoreSK)
END
GO
