CREATE TABLE [dbo].[FactSales](
    OrderId [varchar](20) NOT NULL, 
	[authorId] [varchar](11) NOT NULL,
	[SaleID] [int] NOT NULL,
	[TitleSK] [int] NOT NULL,
	[AuthorSK] [int] NOT NULL,
	[PublisherSK] [int] NOT NULL,
	[StoreSK] [int] NOT NULL,
	[DateKey] [int] NOT NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [money] NULL,
	[TotalAmount]  [money] NULL,
PRIMARY KEY CLUSTERED 
([SaleID], [OrderId], [authorId])WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_Authors] FOREIGN KEY([AuthorSK])
REFERENCES [dbo].[DimAuthors] ([AuthorSK])
GO
ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_Authors]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_Publishers] FOREIGN KEY([PublisherSK])
REFERENCES [dbo].[DimPublishers] ([PublisherSK])
GO
ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_Publishers]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_Stores] FOREIGN KEY([StoreSK])
REFERENCES [dbo].[DimStores] ([StoreSK])
GO
ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_Stores]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_Time] FOREIGN KEY([DateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_Time]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_Titles] FOREIGN KEY([TitleSK])
REFERENCES [dbo].[DimTitles] ([TitleSK])
GO
ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_Titles]
GO
