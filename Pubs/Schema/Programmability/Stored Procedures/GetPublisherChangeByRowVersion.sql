-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPublisherChangeByRowVersion]
	-- Add the parameters for the stored procedure here
(@startRow Bigint
,@endRow Bigint)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT [pub_id]
      ,[pub_name]
      ,[city]
      ,[state]
      ,[country]
      ,[RowVersion]
  FROM [Pubs].[dbo].[publishers] as p
  where p.[RowVersion]>CONVERT(rowversion, @startRow) and p.[RowVersion]<=CONVERT(rowversion, @endRow)
END
GO