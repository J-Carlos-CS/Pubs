CREATE TABLE [dbo].[DimAuthors](
	[AuthorSK] [int] IDENTITY(1,1) NOT NULL,
	[au_id] [varchar](11) NOT NULL,
	[lastNname] [varchar](40) NULL,
	[FirstName] [varchar](20) NULL,
	[phone] [varchar](12) NULL,
	[city] [varchar](20) NULL,
	[state] [varchar](2) NULL,
	[zip] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[AuthorSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
