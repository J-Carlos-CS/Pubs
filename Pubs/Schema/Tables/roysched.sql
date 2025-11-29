CREATE TABLE [dbo].[roysched](
	[title_id] [varchar] (6)NOT NULL,
	[lorange] [int] NULL,
	[hirange] [int] NULL,
	[royalty] [int] NULL,
	[RowVersion] [timestamp] NOT NULL
) ON [PRIMARY]