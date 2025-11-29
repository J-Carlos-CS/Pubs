IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Authors')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Authors', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Publishers')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Publishers', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Stores')
 BEGIN
  INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Stores', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Titles')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Titles', 0)
 END
GO
IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[PackageConfig]
			  WHERE [TableName] = 'Sales')
 BEGIN
	INSERT [dbo].[PackageConfig] ([TableName], [LastRowVersion]) VALUES ('Sales', 0)
 END
GO
