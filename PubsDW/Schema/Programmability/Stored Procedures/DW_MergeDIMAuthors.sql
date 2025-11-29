CREATE PROCEDURE [dbo].[DW_MergeDimAuthors]
AS
BEGIN

	UPDATE da
	SET [au_id] = sa.au_id
	   ,[lastNname] = sa.lastNname
	   ,[FirstName] = sa.FirstName
	   ,[phone] = sa.phone
	   ,[city] = sa.city
	   ,[state] = sa.[state]
	   ,[zip] = sa.zip
	FROM [dbo].DimAuthors da
	INNER JOIN [staging].authors sa ON (da.AuthorSK = sa.AuthorSK)
END
GO

