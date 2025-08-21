-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2024-11-26
-- Description:	Кеширование данных для витрины Мошеннические займы
-- https://jira.bistrodengi.ru/browse/TZSMIS-9389
-- =============================================
CREATE PROCEDURE mart.FraudulentCardLoad
AS BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SET NOCOUNT, XACT_ABORT ON;

	DECLARE 
		  @LogMessageText             XML
		, @Sender                     sysname       = OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)
		, @MessageText                VARCHAR(500)
		, @CurrentParams              NVARCHAR(MAX) = NULL;

	DECLARE 
		@RemoteQuery NVARCHAR(MAX) = N'
SELECT
      TagText
    , ApplicationId
	, ApplicationNumber
	, FraudTagAddDate
	, ProceededOn 
	, FIO
	, ContactBirthDate 
	, ContactDocumentSeries 
	, ContactDocumentNumber
	, ContactMobilePhone
	, CardMask
	, CardExpiresOn
	, SNILS
	, PaymentDate
FROM dbo.VwApplicationCardFraud;';
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

		DROP TABLE IF EXISTS #martFraudulentCardLoad;
		CREATE TABLE #martFraudulentCardLoad
		(
			  ApplicationId     UNIQUEIDENTIFIER  NULL
			, ApplicationNumber VARCHAR(50)       NULL
			, FraudTagAddDate   DATETIME          NULL
			, ProceededOn       DATETIME          NULL
			, FIO               VARCHAR(150)      NULL
			, BirthDate         DATE              NULL
			, DocumentSeries    VARCHAR(50)       NULL
			, DocumentNumber    VARCHAR(50)       NULL
			, MobilePhone       VARCHAR(250)      NULL
			, CardMask          VARCHAR(20)       NULL
			, CardExpiresOn     DATE              NULL
			, TagText           VARCHAR(250)      NULL
			, SNILS             VARCHAR(50)       NULL
			, PaymentDate       DATETIME          NULL
		);
		CREATE CLUSTERED INDEX PK_#martFraudulentCardLoad ON #martFraudulentCardLoad(ApplicationId, TagText);
		INSERT INTO #martFraudulentCardLoad(TagText, ApplicationId, ApplicationNumber, FraudTagAddDate, ProceededOn, FIO, BirthDate, DocumentSeries, DocumentNumber, MobilePhone, CardMask, CardExpiresOn, SNILS, PaymentDate)
		EXEC [$(TZ_BPMONLINETZ_SRV)].[$(TZ_BPMONLINETZ_DB)].dbo.sp_executesql
			@statement = @RemoteQuery;

		MERGE mart.FraudulentCard AS trg
		USING 
		(
			--во вьюхе могут быть несколько почти одинаковых записей для одного сочетания займ-тэг. Берем первый
			SELECT ApplicationId, ApplicationNumber, MIN(FraudTagAddDate) AS FraudTagAddDate, ProceededOn, FIO, BirthDate, DocumentSeries, DocumentNumber, MobilePhone, CardMask, CardExpiresOn, TagText, SNILS, PaymentDate
			FROM #martFraudulentCardLoad
			GROUP BY ApplicationId, ApplicationNumber, ProceededOn, FIO, BirthDate, DocumentSeries, DocumentNumber, MobilePhone, CardMask, CardExpiresOn, TagText, SNILS, PaymentDate
		)
		AS src (ApplicationId, ApplicationNumber, FraudTagAddDate, ProceededOn, FIO, BirthDate, DocumentSeries, DocumentNumber, MobilePhone, CardMask, CardExpiresOn, TagText, SNILS, PaymentDate)
		ON src.ApplicationId = trg.ApplicationId
		   AND src.TagText = trg.TagText
		WHEN NOT MATCHED BY TARGET THEN
			INSERT (ApplicationId, ApplicationNumber, FraudTagAddDate, ProceededOn, FIO, BirthDate, DocumentSeries, DocumentNumber, MobilePhone, CardMask, CardExpiresOn, TagText, SNILS, PaymentDate)
			VALUES(src.ApplicationId, src.ApplicationNumber, src.FraudTagAddDate, src.ProceededOn, src.FIO, src.BirthDate, src.DocumentSeries, src.DocumentNumber, src.MobilePhone, src.CardMask, src.CardExpiresOn, src.TagText, src.SNILS, src.PaymentDate)
		WHEN NOT MATCHED BY SOURCE THEN
			DELETE
		WHEN MATCHED THEN
			UPDATE SET
				  trg.ApplicationNumber = src.ApplicationNumber
				, trg.FraudTagAddDate	= src.FraudTagAddDate
				, trg.ProceededOn		= src.ProceededOn
				, trg.FIO				= src.FIO
				, trg.BirthDate			= src.BirthDate	
				, trg.DocumentSeries	= src.DocumentSeries
				, trg.DocumentNumber	= src.DocumentNumber
				, trg.MobilePhone		= src.MobilePhone
				, trg.CardMask			= src.CardMask
				, CardExpiresOn		    = src.CardExpiresOn
				, TagText	   		    = src.TagText
				, SNILS		   		    = src.SNILS
				, PaymentDate 		    = src.PaymentDate;

		EXEC tz_dds.conv_CodeTranslate
            @SourceTableName    = '$(TZ_MARTS_DB).mart.FraudulentCard';

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
GRANT EXEC ON mart.FraudulentCardLoad TO tz_report;