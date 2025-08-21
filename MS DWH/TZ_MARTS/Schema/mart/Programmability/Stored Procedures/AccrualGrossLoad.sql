-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2024-11-26
-- Description:	Кеширование данных для витрины Начисленные проценты
-- https://jira.bistrodengi.ru/browse/TZSMIS-9286
-- =============================================
CREATE PROCEDURE mart.AccrualGrossLoad
	@ReloadFrom DATE = NULL
AS BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SET NOCOUNT, XACT_ABORT ON;

	DECLARE 
		  @LogMessageText             XML
		, @Sender                     sysname       = OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)
		, @MessageText                VARCHAR(500)
		, @CurrentParams              NVARCHAR(MAX) = NULL
		, @AccrualDateLoadFrom        DATE          = ISNULL(@ReloadFrom, (SELECT MAX(AccrualDate) FROM mart.AccrualGross));

	DECLARE 
		@RemoteQuery NVARCHAR(MAX) = N'
SELECT a.AccrualDate, SUM(a.AmountAccrued) AS Amount
FROM       dbo.Accrual                   a
INNER JOIN dbo.Application               ap ON a.ApplicationId  = ap.Id
INNER JOIN dbo.Contact                   c  ON ap.ContactId     = c.Id 
LEFT  JOIN dbo.ApplicationTestParameters tc ON tc.ApplicationId = ap.Id OR tc.ContactId = c.Id
WHERE   a.TypeId      = ''D7869B87-A278-4393-9E67-5A2D6CA2E7C4''--Проценты
	AND a.StatusId    = ''5E28B7B4-BBFA-437B-B177-0EA4EF78587F''--Актуально
	AND tc.Id         IS NULL
	AND (a.AccrualDate >= DATEADD(DAY, -7, @AccrualDateLoadFrom) OR @AccrualDateLoadFrom IS NULL)
GROUP BY a.AccrualDate;'
		, @RemoteParams NVARCHAR(MAX) = N'@AccrualDateLoadFrom DATE';

	BEGIN TRY
		SET @LogMessageText = (
            SELECT
                  @Sender        AS Sender
                , @CurrentParams AS Params
                , (SELECT NULL FOR XML PATH('Params'), TYPE)
            FOR XML PATH('Params')
        );

		EXEC tz_work.log_RegisterInsert
              @BatchId          = NULL
            , @ObjectRegisterId = NULL
            , @StatusCode       = 'MART_LOAD_START'
            , @MessageText      = @LogMessageText
            , @Sender           = @Sender
            , @Params           = NULL
            , @ErrorLevel       = 0
            , @ParentLogId      = NULL;

		DROP TABLE IF EXISTS #mart_AccrualGrossLoad;
		CREATE TABLE #mart_AccrualGrossLoad
		(
			   AccrualDate   DATE           NULL
			 , AmountAccrued DECIMAL(19, 2) NULL
		);
		INSERT INTO #mart_AccrualGrossLoad
		EXEC [$(TZ_BPMONLINETZ_SRV)].[$(TZ_BPMONLINETZ_DB)].dbo.sp_executesql
			  @statement           = @RemoteQuery
			, @params              = @RemoteParams
			, @AccrualDateLoadFrom = @AccrualDateLoadFrom;

		MERGE mart.AccrualGross AS trg
		USING 
		(
			SELECT AccrualDate,AmountAccrued FROM #mart_AccrualGrossLoad
		)
		AS src (AccrualDate, AmountAccrued)
		ON src.AccrualDate = trg.AccrualDate
		WHEN NOT MATCHED THEN
			INSERT (AccrualDate, AmountAccrued)
			VALUES(src.AccrualDate, src.AmountAccrued)
		WHEN MATCHED THEN
			UPDATE SET
				trg.AmountAccrued = ISNULL(src.AmountAccrued, 0);

		EXEC tz_work.log_RegisterInsert
              @BatchId          = NULL
            , @ObjectRegisterId = NULL
            , @StatusCode       = 'MART_LOAD_FINISH'
            , @MessageText      = @LogMessageText
            , @Sender           = @Sender
            , @Params           = NULL
            , @ErrorLevel       = 0;
	END TRY
	BEGIN CATCH
		SET @MessageText    = ERROR_MESSAGE();
        SET @LogMessageText = (SELECT @MessageText AS ErrorText FOR XML PATH('Params'));

		EXEC tz_work.log_RegisterInsert
              @BatchId          = NULL
            , @ObjectRegisterId = NULL
            , @StatusCode       = 'ERROR'
            , @MessageText      = @LogMessageText
            , @Sender           = @Sender
            , @Params           = NULL
            , @ErrorLevel       = 0;

		THROW 50001, @MessageText, 1;

		RETURN 1;
	END CATCH;

	RETURN 0;
END;
GO
GRANT EXEC ON mart.AccrualGrossLoad TO tz_report;
