CREATE TABLE [dbo].[jobs](
	[job_id] [smallint] IDENTITY(1,1) NOT NULL,
	[job_desc] [varchar](50) NOT NULL,
	[min_lvl] [tinyint] NOT NULL,
	[max_lvl] [tinyint] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED ([job_id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[jobs] ADD  DEFAULT ('New Position - title not formalized yet') FOR [job_desc]
GO
ALTER TABLE [dbo].[jobs]  WITH CHECK ADD CHECK  (([max_lvl]<=(250)))
GO
ALTER TABLE [dbo].[jobs]  WITH CHECK ADD CHECK  (([min_lvl]>=(10)))
GO
