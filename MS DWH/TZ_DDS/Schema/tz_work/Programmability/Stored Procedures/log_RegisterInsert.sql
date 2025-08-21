CREATE PROCEDURE tz_work.log_RegisterInsert
      @BatchId          BIGINT                     -- Пачка выгрузки
    , @ObjectRegisterId BIGINT                     -- Объект выгрузки
    , @StatusCode       VARCHAR(30)                -- Статус лога. см. справочник dbo.LogStatus
    , @MessageText      XML          = NULL        -- Сообщение или ошибка в свободном формате 
    , @Sender           sysname      = NULL        -- Кто вызвал вставку в лог, имя процедуры
    , @Params           XML          = NULL        -- Параметры вызываемой процедуры в произвольном формате
    , @ErrorLevel       INT          = 0           -- Уровень ошибки, от нее зависит степень дополнительной обработки (0 - ничего не делать, 1 - уровень пользователя{не используется}, 2 - уровень админа)
    , @ParentLogId      BIGINT       = NULL        -- Id родительской записи в логе. Нужна для определения, какой вызов в процедуре был первым.
    , @ResultId         BIGINT       = NULL OUTPUT -- Id результата
AS BEGIN
    DECLARE 
          @RemoteQuery  NVARCHAR(MAX) = N'EXEC [$(TZ_WORK_DB)].log.RegisterInsert
  @BatchId          = @BatchId
, @ObjectRegisterId = @ObjectRegisterId
, @StatusCode       = @StatusCode
, @MessageText      = @MessageText
, @Sender           = @Sender
, @Params           = @Params
, @ErrorLevel       = @ErrorLevel
, @ParentLogId      = @ParentLogId
, @ResultId         = @ResultId;'
        , @RemoteParams NVARCHAR(MAX) = N'
  @BatchId          BIGINT
, @ObjectRegisterId BIGINT
, @StatusCode       VARCHAR(30)
, @MessageText      XML
, @Sender           sysname
, @Params           XML
, @ErrorLevel       INT
, @ParentLogId      BIGINT
, @ResultId         BIGINT';

	EXEC master.dbo.sp_executesql
          @Statement        = @RemoteQuery
        , @Params           = @RemoteParams
        , @BatchId          = @BatchId
        , @ObjectRegisterId = @ObjectRegisterId
        , @StatusCode       = @StatusCode
        , @MessageText      = @MessageText
        , @Sender           = @Sender
        , @Params           = @Params
        , @ErrorLevel       = @ErrorLevel
        , @ParentLogId      = @ParentLogId
        , @ResultId         = @ResultId;
END;
GO
GRANT EXEC ON tz_work.log_RegisterInsert to tz_report, [1c_dwh];
GO