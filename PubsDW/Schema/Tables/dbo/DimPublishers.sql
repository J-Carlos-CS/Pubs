CREATE TABLE [dbo].[DimPublishers](
	[PublisherSK] [int] IDENTITY(1,1) NOT NULL,
	[pub_id] [char](4) NOT NULL,
	[pubName] [varchar](40) NULL,
	[city] [varchar](20) NULL,
	[state] [varchar](2) NULL,
	[country] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[PublisherSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
