CREATE TABLE [staging].[sales]
(
	[SaleSK] [int] NOT NULL,
	[TitleSK] [int] NOT NULL,
	[AuthorSK] [int] NULL,
	[PublisherSK] [int] NOT NULL,
	[StoreSK] [int] NOT NULL,
	[DateKey] [int] NOT NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [money] NULL,
	[TotalAmount]  [money] NULL,
)
