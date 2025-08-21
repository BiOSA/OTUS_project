-- =============================================
-- Author:      Дзреян К.Е..
-- Create date: 2022-09-09
-- Description: Добавление записи в лог
-- =============================================
CREATE PROCEDURE [log].RegisterInsert
      @BatchId          BIGINT                     -- Пачка выгрузки
    , @ObjectRegisterId BIGINT                     -- Объект выгрузки
    , @StatusCode       VARCHAR(30)                -- Статус лога. см. справочник dbo.LogStatus
    , @MessageText      XML          = NULL        -- Сообщение или ошибка в свободном формате 
    , @Sender           sysname      = NULL        -- Кто вызвал вставку в лог, имя процедуры
    , @Params           XML          = NULL        -- Параметры вызываемой процедуры в произвольном формате
    , @ErrorLevel       INT          = 0           -- Уровень ошибки, от нее зависит степень дополнительной обработки (0 - ничего не делать, 1 - уровень пользователя{не используется}, 2 - уровень админа)
    , @ParentLogId      BIGINT       = NULL        -- Id родительской записи в логе. Нужна для определения, какой вызов в процедуре был первым.
    , @ResultId         BIGINT       = NULL OUTPUT -- Id результата
AS 
BEGIN
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SET NOCOUNT ON;

    DECLARE
          @Subject      VARCHAR(300)
        , @Text         VARCHAR(MAX)
        , @ADMIN_EMAILS VARCHAR(300) = CAST(prm.RegisterGet('ADMIN_EMAILS', 'itimofeev@eqvantalab.ru') AS VARCHAR(300))
        , @USER_LEVEL   INT          = 1
        , @ADMIN_LEVEL  INT          = 2
        , @UserEmails   VARCHAR(MAX)
        , @Whom         VARCHAR(300)
        , @Copy         VARCHAR(300)
        , @ParamsS      VARCHAR(MAX) = tz_dwh.HTML2Varchar(CAST(@Params AS VARCHAR(MAX)));

	BEGIN TRY
		--добавление в лог записи
		INSERT INTO log.Register (BatchId, ObjectRegisterId, ParentId, StatusCode, MessageText, Sender, Params)
		SELECT @BatchId, @ObjectRegisterId, @ParentLogId, @StatusCode, @MessageText, @Sender, @Params
		SET @ResultId = SCOPE_IDENTITY();

		--отправка письма только админам, что произошла ошибка
		IF @ErrorLevel = @ADMIN_LEVEL BEGIN
			SELECT 
				  @Subject = DB_NAME()+':' + @StatusCode
				, @Text    = '<TABLE BORDER="1">
	<TR><TD><B>Статус:</B></TD><TD style="color:'+IIF(@StatusCode='ERROR','red','black')+'">' + ISNULL(@StatusCode,                        'NULL') + '</TD></TR>
	<TR><TD><B>Отправитель:</B></TD><TD>'                                                     + ISNULL(@Sender,                            'NULL') + '</TD></TR>
	<TR><TD><B>Код:</B></TD><TD>'                                                             + ISNULL(CAST(@MessageText AS VARCHAR(MAX)), 'NULL') + '</TD></TR>
	<TR><TD><B>Параметры:</B></TD><TD>'                                                       + ISNULL(@ParamsS,                           'NULL') + '</TD></TR>
	</TABLE>';

			EXEC tz_dwh.EmailSend
				  @Whom      = @ADMIN_EMAILS
				, @Subject   = @Subject
				, @Text      = @Text
				, @Format    = 'HTML';
		END;
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
		RETURN 1;
	END CATCH;

	RETURN 0;
END
GO
GRANT EXEC ON log.RegisterInsert TO tz_report, [1c_dwh];