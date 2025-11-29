CREATE PROCEDURE [dbo].[DW_MergeDimTitles]
AS
BEGIN

	UPDATE dt
	SET [title_id] =st.[title_id]
	   ,[title] = st.[title]
	   ,[type] = st.[type]
	   ,[price] = st.[price]
	   ,[pubdate] = st.[pubdate]
	   ,[pub_id] = st.[pub_id]
	FROM [dbo].DimTitles dt
	INNER JOIN [staging].titles st ON (dt.TitleSK = st.TitleSK)
END
GO