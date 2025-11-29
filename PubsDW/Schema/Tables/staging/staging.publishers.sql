CREATE TABLE [staging].[publishers]
(
	[PublisherSK] [int] NOT NULL,
	[pub_id] [char](4) NOT NULL,
	[pubName] [varchar](40) NULL,
	[city] [varchar](20) NULL,
	[state] [varchar](2) NULL,
	[country] [varchar](30) NULL,
)