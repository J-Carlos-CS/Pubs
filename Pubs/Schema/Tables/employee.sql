CREATE TABLE [dbo].[employee](
	[emp_id] [char](9) NOT NULL,
	[fname] [varchar](20) NOT NULL,
	[minit] [char](1) NULL,
	[lname] [varchar](30) NOT NULL,
	[job_id] [smallint] NOT NULL,
	[job_lvl] [tinyint] NULL,
	[pub_id] [char](4) NOT NULL,
	[hire_date] [datetime] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
CONSTRAINT [PK_emp_id] PRIMARY KEY NONCLUSTERED ([emp_id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[employee] ADD  DEFAULT ((1)) FOR [job_id]
GO
ALTER TABLE [dbo].[employee] ADD  DEFAULT ((10)) FOR [job_lvl]
GO
ALTER TABLE [dbo].[employee] ADD  DEFAULT ('9952') FOR [pub_id]
GO
ALTER TABLE [dbo].[employee] ADD  DEFAULT (getdate()) FOR [hire_date]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([job_id])
REFERENCES [dbo].[jobs] ([job_id])
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([pub_id])
REFERENCES [dbo].[publishers] ([pub_id])
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [CK_emp_id] CHECK  (([emp_id] like '[A-Z][A-Z][A-Z][1-9][0-9][0-9][0-9][0-9][FM]' OR [emp_id] like '[A-Z]-[A-Z][1-9][0-9][0-9][0-9][0-9][FM]'))
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [CK_emp_id]
GO