CREATE PROCEDURE [dbo].[DW_MergeDimPublishers]
AS
BEGIN

	UPDATE dp
	SET pub_id =sp.pub_id
	   ,pubName = sp.pubName
	   ,city = sp.city
	   ,[state] = sp.[state]
	   ,country = sp.country
	FROM [dbo].DimPublishers dp
	INNER JOIN [staging].publishers sp ON (dp.PublisherSK = sp.PublisherSK)
END
GO

