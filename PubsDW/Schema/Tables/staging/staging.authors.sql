CREATE TABLE [staging].[authors]
(
	[AuthorSK] [int] NOT NULL,
	[au_id] [varchar](11) NOT NULL,
	[lastNname] [varchar](40) NULL,
	[FirstName] [varchar](20) NULL,
	[phone] [varchar](12) NULL,
	[city] [varchar](20) NULL,
	[state] [varchar](2) NULL,
	[zip] [varchar](5) NULL,
)