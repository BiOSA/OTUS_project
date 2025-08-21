DECLARE @ObjectRegisterId INT=1

DECLARE 
	  @TableName       NVARCHAR(MAX) 
	, @TableNamePrefix NVARCHAR(50)
	, @Fields          NVARCHAR(MAX)
	, @SERVER          NVARCHAR(MAX) 
SELECT @TableName = org.SourceTableName, @TableNamePrefix = TableNamePrefix, @SERVER = ds.Prefix1
FROM ObjectRegister org
INNER JOIN DataSource ds ON ds.DataSourceId=org.DataSourceId
WHERE org.ObjectRegisterId = @ObjectRegisterId;

SELECT @Fields = STUFF((
    SELECT ','+REPLACE(orf.SourceQuery, '''', '''''') + ' AS '+orf.TargetFieldName
	FROM dbo.ObjectRegisterField orf
	WHERE orf.ObjectRegisterId = @ObjectRegisterId
	ORDER BY ObjectRegisterFieldId
	FOR XML PATH('')
	)
, 1, 1, '');
SET @Fields = tz_dwh.XMLParseBack(@Fields);

DECLARE @Query NVARCHAR(MAX) = 'SELECT TOP 0 '+@Fields+' FROM '+@TableName+' '+@TableNamePrefix;

DROP TABLE IF EXISTS ##TZ_WORK_TableCreateHelper;
SELECT @Query = 'SELECT * INTO ##TZ_WORK_TableCreateHelper FROM OPENQUERY('+@SERVER+', '''+@Query+''')';
EXEC(@Query)

SELECT FieldName + REPLICATE(' ', 69 - LEN(FieldName))+'NULL'
FROM (
	SELECT '    , '+c.name +REPLICATE(' ', 42 - LEN(c.name))+UPPER(t.name) + 
	 CASE
		 WHEN t.name IN ('nvarchar', 'varchar', 'nchar', 'char', 'varbinary', 'binary') THEN '('+IIF(c.max_length=-1,'MAX',CAST(c.max_length AS VARCHAR(10)))+')'
		 WHEN t.name IN ('decimal', 'numeric')                                          THEN '('+CAST(c.precision AS VARCHAR(10))+ ','+CAST(c.scale AS VARCHAR(10))+')'
		 ELSE ''
	 END AS FieldName
	 ,column_id 
	FROM tempdb.sys.columns c
	INNER JOIN sys.types t ON c.user_type_id = t.user_type_id
	WHERE object_id=OBJECT_ID('tempdb..##TZ_WORK_TableCreateHelper')
)s
ORDER BY column_id;