CREATE TABLE [dbo].[stores](
	[stor_id] [char](4) NOT NULL,
	[stor_name] [varchar](40) NULL,
	[stor_address] [varchar](40) NULL,
	[city] [varchar](20) NULL,
	[state] [char](2) NULL,
	[zip] [char](5) NULL,
	[RowVersion] [timestamp] NOT NULL,
 CONSTRAINT [UPK_storeid] PRIMARY KEY CLUSTERED 
(
	[stor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
