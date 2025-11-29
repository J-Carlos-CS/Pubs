CREATE TABLE [dbo].[titleauthor](
	[au_id] [varchar](11) NOT NULL,
	[title_id] [varchar](6) NOT NULL,
	[au_ord] [tinyint] NULL,
	[royaltyper] [int] NULL,
	[RowVersion] [timestamp] NOT NULL,
 CONSTRAINT [UPKCL_taind] PRIMARY KEY CLUSTERED 
(
	[au_id] ASC,
	[title_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]