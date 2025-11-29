-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAuthorsChangeByRowVersion]
	-- Add the parameters for the stored procedure here
(@startRow Bigint
,@endRow Bigint)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT [au_id]
      ,[au_lname]
      ,[au_fname]
      ,[phone]
      ,[address]
      ,[city]
      ,[state]
      ,[zip]
      ,[contract]
      ,[RowVersion]
  FROM [Pubs].[dbo].[authors] as a
  where a.[RowVersion]>CONVERT(rowversion, @startRow) and a.[RowVersion]<=CONVERT(rowversion, @endRow)
END
GO