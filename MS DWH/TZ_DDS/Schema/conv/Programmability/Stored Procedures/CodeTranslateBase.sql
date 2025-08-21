-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 
-- Description:	Базовая трансляция Id объектов в RK-ключи
-- =============================================
CREATE PROCEDURE conv.CodeTranslateBase
	  @SourceTableName           sysname
	, @ConvTableName             sysname
	, @SourceIdColumnName        sysname
	, @SourceRKColumnName        sysname
	, @SOURCE_SYSTEM_CD          VARCHAR(3)
AS BEGIN
	DECLARE
		  @QueryText                 NVARCHAR(MAX)
        , @Sender                    sysname       = ISNULL(OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID), '<DirectRun>')

	--внесение в конвертационную таблицу новых данных
	SET @QueryText = N'
SET NOCOUNT, XACT_ABORT ON;
SET ROWCOUNT 5000000;

DECLARE @rc  INT = 0;
DECLARE @rc2 INT = 0;

WHILE 1=1 BEGIN
    BEGIN TRY
    DECLARE @TRANCOUNT INT = @@TRANCOUNT;
    
    BEGIN TRANSACTION
    
    INSERT INTO ' + @ConvTableName + ' (ID, SOURCE_SYSTEM_CD, Source)
    SELECT DISTINCT s.['+@SourceIdColumnName+'], '''+@SOURCE_SYSTEM_CD+''', '''+@SourceTableName+'''
    FROM      ' + @SourceTableName + ' s WITH(NOLOCK)
    LEFT JOIN ' + @ConvTableName   + ' c WITH(NOLOCK) ON c.ID = s.['+@SourceIdColumnName+'] AND c.SOURCE_SYSTEM_CD = '''+@SOURCE_SYSTEM_CD+'''
    WHERE c.RK IS NULL
    	AND s.['+@SourceIdColumnName+'] IS NOT NULL;
    SET @rc = @@ROWCOUNT;';
    
    --обновление в исходнике ключа
    IF @SourceRKColumnName IS NOT NULL BEGIN
    	SET @QueryText += '
    
    UPDATE s SET ['+@SourceRKColumnName+'] = c.RK
    FROM  ' + @SourceTableName + ' s WITH(UPDLOCK, SERIALIZABLE)
    INNER JOIN '+@ConvTableName +' c WITH(NOLOCK) ON c.ID = s.['+@SourceIdColumnName+'] AND c.SOURCE_SYSTEM_CD = '''+@SOURCE_SYSTEM_CD+'''
    WHERE s.['+@SourceRKColumnName+'] IS NULL
        AND s.['+@SourceIdColumnName+'] IS NOT NULL;
    SET @rc2 = @@ROWCOUNT;
    ';
    		END;
    
    		SET @QueryText+='
    COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
    	DECLARE 
    	      @MessageText  XML     = (SELECT ERROR_MESSAGE() AS ErrorText FOR XML PATH(''Params''))
    		, @Params       XML     = (SELECT '''+@SourceTableName+''' AS SourceTableName FOR XML PATH(''Params''))
    		, @ADMIN_LEVEL  INT     = 2;

        PRINT CAST(@MessageText AS VARCHAR(MAX));
    
    	EXEC tz_work.log_RegisterInsert
    	      @BatchId          = NULL
    	    , @ObjectRegisterId = NULL
    	    , @StatusCode       = ''DDS_CONV_ERROR''
    		, @MessageText      = @MessageText
    		, @Sender			= '''+@Sender+'''
    		, @Params			= @Params
    		, @ErrorLevel       = @ADMIN_LEVEL;
    
    	WHILE(@@TRANCOUNT > @TRANCOUNT) 
    		ROLLBACK TRANSACTION;
    END CATCH;

    IF @rc = 0 AND @rc2 = 0
		BREAK;
END;';
	EXEC(@QueryText);
END;
GO
GRANT EXEC ON conv.CodeTranslateBase TO [1c_dwh];