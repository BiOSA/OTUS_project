-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 
-- Description:	Трансляция Id - объектов в RK-ключи
-- =============================================
CREATE PROCEDURE conv.CodeTranslate
	  @SourceTableName sysname
    , @ParentLogId     INT     = NULL
    , @ResultTableName sysname = NULL  --Можно обновить таблицу по шаблону, указанному в @SourceTableName. Например, есть шаблон в TZ_DDS.tz.Accrual, но надо те же поля обновить в TZ_STG.tz.Accrual. Не будем же 2 одинаковых шаблона городить?
AS BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT, XACT_ABORT ON;

	DECLARE
		  @ConvTableName             sysname
		, @SourceIdColumnName        sysname
		, @SourceRKColumnName        sysname
		, @SOURCE_SYSTEM_CD          VARCHAR(3)
		, @QueryText                 NVARCHAR(MAX)
		, @ObjectRegisterId          BIGINT
		, @OuterSender               sysname       = ISNULL(OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID), '<DirectRun>')
        , @InnerSender               sysname       = 'conv.CodeTranslateBase'
        , @LogMessageText            XML;

    SET @LogMessageText = (SELECT @SourceTableName AS SourceTableName, @ParentLogId AS ParentLogId, @ResultTableName AS ResultTableName FOR XML PATH('Params'));;
    EXEC tz_work.log_RegisterInsert
          @BatchId          = NULL
        , @ObjectRegisterId = @ObjectRegisterId
        , @StatusCode       = 'DDS_CONV_START'
        , @MessageText      = @LogMessageText
        , @Sender           = @OuterSender
        , @Params           = NULL
        , @ErrorLevel       = 0
        , @ParentLogId      = @ParentLogId;

    EXEC master.dbo.sp_executesql
          @query            = N'SELECT TOP 1 @ObjectRegisterId = ObjectRegisterId FROM [$(TZ_WORK_DB)].dbo.ObjectRegister WHERE @SourceTableName LIKE ''%.''+Name'
        , @params           = N'@ObjectRegisterId BIGINT OUTPUT, @SourceTableName sysname'
        , @ObjectRegisterId = @ObjectRegisterId OUTPUT
        , @SourceTableName  = @SourceTableName;

    SET @ResultTableName = ISNULL(@ResultTableName, @SourceTableName);

	DECLARE crs CURSOR LOCAL STATIC READ_ONLY FORWARD_ONLY FOR
	SELECT
	      ConvTableName     
	    , SourceIdColumnName
	    , SourceRKColumnName
		, SOURCE_SYSTEM_CD
	FROM dbo.SOURCE_SYSTEM_TABLE 
	WHERE SourceTableName = @SourceTableName;
	OPEN crs;
	WHILE 1 = 1 BEGIN
		SELECT @ConvTableName = NULL, @SourceIdColumnName = NULL, @SourceRKColumnName = NULL, @SOURCE_SYSTEM_CD = NULL;
		FETCH NEXT FROM crs INTO @ConvTableName, @SourceIdColumnName, @SourceRKColumnName, @SOURCE_SYSTEM_CD
		IF @@FETCH_STATUS !=0
			BREAK;
        
        SET @LogMessageText = (SELECT @InnerSender AS PostProcedure, @ConvTableName AS ConvTableName, @SourceIdColumnName AS SourceIdColumnName, @SourceRKColumnName AS SourceRKColumnName, @SOURCE_SYSTEM_CD AS SOURCE_SYSTEM_CD FOR XML PATH('Params'));
        EXEC tz_work.log_RegisterInsert
              @BatchId          = NULL
            , @ObjectRegisterId = @ObjectRegisterId
            , @StatusCode       = 'DDS_CONV_START'
            , @MessageText      = @LogMessageText
            , @Sender           = @InnerSender
            , @Params           = NULL
            , @ErrorLevel       = 0
            , @ParentLogId      = @ParentLogId;

        EXEC conv.CodeTranslateBase
              @SourceTableName     = @ResultTableName
            , @ConvTableName       = @ConvTableName
            , @SourceIdColumnName  = @SourceIdColumnName
            , @SourceRKColumnName  = @SourceRKColumnName
            , @SOURCE_SYSTEM_CD    = @SOURCE_SYSTEM_CD;
	END;
	CLOSE crs; 
	DEALLOCATE crs;

    SET @LogMessageText = NULL;
    EXEC tz_work.log_RegisterInsert
          @BatchId          = NULL
        , @ObjectRegisterId = @ObjectRegisterId
        , @StatusCode       = 'DDS_CONV_FINISH'
        , @MessageText      = @LogMessageText
        , @Sender           = @OuterSender
        , @Params           = NULL
        , @ErrorLevel       = 0
        , @ParentLogId      = @ParentLogId;

	RETURN 0;
END
GO
GRANT EXEC ON conv.CodeTranslate TO tz_report, [1c_dwh];