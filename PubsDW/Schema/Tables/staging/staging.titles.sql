CREATE TABLE [staging].[titles]
(
	[TitleSK] [int] NOT NULL,
	[title_id] [varchar](6) NOT NULL,
	[title] [varchar](80) NULL,
	[type] [char](12) NULL,
	[price] [money] NULL,
	[pubdate] [datetime] NULL,
	[pub_id] [char](4) NULL,
)
