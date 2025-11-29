CREATE TABLE [staging].[stores]
(
	[StoreSK] [int] IDENTITY(1,1) NOT NULL,
	[stor_id] [char](4) NOT NULL,
	[storeName] [varchar](40) NULL,
	[city] [varchar](20) NULL,
	[state] [varchar](2) NULL,
	[zip] [varchar](5) NULL,
)
