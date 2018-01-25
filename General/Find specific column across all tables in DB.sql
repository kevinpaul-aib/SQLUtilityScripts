declare @ColumnName as varchar(100) = 'Student_Application_ID'

SELECT 
	t.name AS TableName, 
	SCHEMA_NAME(schema_id) AS SchemaName, 
	c.name AS ColumnName
FROM 
	sys.tables AS t
		INNER JOIN 
	sys.columns c 
		ON t.OBJECT_ID = c.OBJECT_ID
WHERE 
	c.[name] LIKE '%' + @ColumnName + '%'
ORDER BY 
	SchemaName, 
	TableName