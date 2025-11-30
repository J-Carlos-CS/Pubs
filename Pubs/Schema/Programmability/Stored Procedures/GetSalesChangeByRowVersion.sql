-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSalesChangeByRowVersion]
	-- Add the parameters for the stored procedure here
(@startRow Bigint
,@endRow Bigint)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT s.stor_id
      ,CAST(s.stor_id AS INT) AS storeId
      ,s.ord_num
      ,a.au_id
	  ,t.title_id
	  ,pubId = p.pub_id
	  ,dataKey = CONVERT(INT,
					(CONVERT(CHAR(4),DATEPART(YEAR,s.ord_date))
					+ CASE 
						WHEN DATEPART(MONTH,s.ord_date) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,s.ord_date))
						ELSE + CONVERT(CHAR(2),DATEPART(MONTH,s.ord_date))
					END
					+ CASE 
						WHEN DATEPART(DAY,s.ord_date) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,s.ord_date))
						ELSE + CONVERT(CHAR(2),DATEPART(DAY,s.ord_date))
					END))
	  ,s.qty
	  ,s.payterms
	  ,price = CONVERT(MONEY, ts.price)
      ,total = CONVERT(MONEY, ts.price * s.qty)
  FROM [pubs].[dbo].[sales] as s
  INNER JOIN pubs.dbo.titleauthor AS t ON s.title_id = t.title_id
  INNER JOIN pubs.dbo.titles AS ts ON s.title_id = ts.title_id
  INNER JOIN pubs.dbo.publishers AS p ON p.pub_id = ts.pub_id
  INNER JOIN pubs.dbo.authors AS a ON a.au_id = t.au_id
  where s.[RowVersion]>CONVERT(rowversion, @startRow) and s.[RowVersion]<=CONVERT(rowversion, @endRow)
  or (t.RowVersion> convert(rowversion,@startRow) and t.RowVersion<= convert(rowversion,@endRow))
  or (ts.RowVersion> convert(rowversion,@startRow) and ts.RowVersion<= convert(rowversion,@endRow))
  or (p.RowVersion> convert(rowversion,@startRow) and p.RowVersion<= convert(rowversion,@endRow))
  or (a.RowVersion> convert(rowversion,@startRow) and a.RowVersion<= convert(rowversion,@endRow))
END