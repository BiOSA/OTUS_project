-- =============================================
-- Author:      Дзреян К.Е..
-- Create date: 2025-07-21
-- Description: Проверка объекта на соответствие источнику
CREATE PROCEDURE chk.DDSQualityObjectRun
      @ObjectName     VARCHAR(50)
    , @NotInDWHAmount BIGINT      = 0    OUT
    , @NotInSrcAmount BIGINT      = 0    OUT
    , @Result         XML         = NULL OUT
AS BEGIN
    DECLARE 
          @SelectQuery            NVARCHAR(MAX)
        , @RemoteServer           NVARCHAR(MAX)
        , @ExecInsert             NVARCHAR(MAX)
        , @DiffQuery              NVARCHAR(MAX)
        , @CheckBackQuery         NVARCHAR(MAX)
        , @TargetKeyFieldName     sysname
        , @DDS_SERVER             sysname       = CAST(prm.RegisterGet('DDS_DB_NAME', '') AS VARCHAR(50))
        , @DDSTableName           sysname;

	DROP TABLE IF EXISTS ##DDSQualityObjectRun_Src;
	CREATE TABLE ##DDSQualityObjectRun_Src
	(
		  Id         UNIQUEIDENTIFIER NULL
		, ChangeDate DATETIME		  NULL
		, BatchId    INT			  NULL
	);
	CREATE CLUSTERED INDEX PK_##DDSQualityObjectRun_Src ON ##DDSQualityObjectRun_Src(Id);

    SELECT 
          @RemoteServer       = ds.Prefix1
        , @DDSTableName       = '['+@DDS_SERVER + '].' + ISNULL(o.DDSTableName, o.Name)
        , @TargetKeyFieldName = orf.TargetFieldName
        , @CheckBackQuery     = 'SELECT @NotInSrcAmount = COUNT(*) FROM (SELECT src.* FROM ##DDSQualityObjectRun_Src src LEFT JOIN ['+@DDS_SERVER+'].'+ISNULL(o.DDSTableName, o.Name)+' dst ON src.Id = dst.'+@TargetKeyFieldName+' WHERE (src.Id IS NULL)) s;'
        , @SelectQuery        = tz_dwh.XMLParseBack(STUFF(((
                                    SELECT 'UNION SELECT ' + orf.SourceQuery + ', ' + [Name]+ ' FROM '+ o.SourceTableName + ' src '
                                    FROM tz_dwh.fnSplitStringId(DataChangeField, '|')
                                    FOR XML PATH('')
                                )), 1, 6, ''))
    FROM       dbo.ObjectRegister      o
    INNER JOIN dbo.ObjectRegisterField orf ON orf.ObjectRegisterId = o.ObjectRegisterId
                                          AND orf.SourceQuery      IN ('Id', 'src.Id')
    INNER JOIN dbo.DataSource          ds  ON ds.DataSourceId      = o.DataSourceId
    WHERE o.Name = @ObjectName;

    SET @ExecInsert = 'INSERT INTO ##DDSQualityObjectRun_Src (Id, ChangeDate) EXEC ' + @RemoteServer + '.master.dbo.sp_executesql N''' + @SelectQuery + '''';
    --PRINT @ExecInsert;
    EXEC(@ExecInsert);

    --те, которых нет в DDS
    DROP TABLE IF EXISTS ##NotInDDS;
    CREATE TABLE ##NotInDDS
    (
          BatchId BIGINT NULL
        , Amount  BIGINT NULL
    );
    DECLARE @FindNotInDDSQuery NVARCHAR(MAX) = N'
    INSERT INTO ##NotInDDS(BatchId, Amount)
    SELECT b.BatchId, COUNT(*) AS Amount
    FROM       ##DDSQualityObjectRun_Src src
    LEFT JOIN '+@DDSTableName+'          dst ON src.Id = dst.' + @TargetKeyFieldName + ' 
    LEFT JOIN dbo.Batch b   ON DATEADD(HOUR, 3, src.ChangeDate) BETWEEN b.DateFrom AND b.DateTill
    WHERE (dst.'+@TargetKeyFieldName+' IS NULL)
        AND b.BatchId IS NOT NULL
    GROUP BY b.BatchId;'
    --PRINT @FindNotInDDSQuery;
    EXEC(@FindNotInDDSQuery);

    SELECT @NotInDWHAmount = ISNULL((SELECT SUM(Amount) FROM ##NotInDDS), 0);

    SELECT @Result = (SELECT BatchId, Amount FROM ##NotInDDS FOR XML PATH('Batches'), ROOT('Result'))

    DECLARE @BatchId BIGINT;
    DECLARE crs CURSOR FOR
        SELECT BatchId
        FROM ##NotInDDS 
        ORDER BY BatchId;
    OPEN crs;
    WHILE 1=1 BEGIN
        FETCH NEXT FROM crs INTO @BatchId;
        IF @@FETCH_STATUS!=0
            BREAK;

        --PRINT @BatchId;
        --PRINT '->STG'
        EXEC dbo.AbstractObjectStageProcess
              @BatchId            = @BatchId
            , @ObjectRegisterName = @ObjectName
            , @IsForcedLoad       = 1
            , @IsDebug            = 0;
        --PRINT '->DDS'
        EXEC dbo.AbstractObjectDDSProcess
              @BatchId            = @BatchId
            , @ObjectRegisterName = @ObjectName
            , @IsForcedLoad       = 1
            , @IsDebug            = 0
            , @IsReloadMissedONly = 1;
    END;
    CLOSE crs;
    DEALLOCATE crs;

    --PRINT(@CheckBackQuery);
    EXEC dbo.sp_executesql
          @statement      = @CheckBackQuery
        , @params         = N'@NotInSrcAmount BIGINT OUT'
        , @NotInSrcAmount = @NotInSrcAmount OUT;

    INSERT INTO chk.Quality(ObjectName, NotInDWH, NotInSrc, Result)
	SELECT @ObjectName, @NotInDWHAmount, @NotInSrcAmount, @Result;
END;