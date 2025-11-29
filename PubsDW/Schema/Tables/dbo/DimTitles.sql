CREATE TABLE [dbo].[DimTitles](
	[TitleSK] [int] IDENTITY(1,1) NOT NULL,
	[title_id] [varchar](6) NOT NULL,
	[title] [varchar](80) NULL,
	[type] [char](12) NULL,
	[price] [money] NULL,
	[pubdate] [datetime] NULL,
	[pub_id] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[TitleSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
