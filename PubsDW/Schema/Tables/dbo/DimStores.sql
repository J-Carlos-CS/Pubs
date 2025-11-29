CREATE TABLE [dbo].[DimStores](
	[StoreSK] [int] IDENTITY(1,1) NOT NULL,
	[stor_id] [char](4) NOT NULL,
	[storeName] [varchar](40) NULL,
	[city] [varchar](20) NULL,
	[state] [varchar](2) NULL,
	[zip] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[StoreSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO