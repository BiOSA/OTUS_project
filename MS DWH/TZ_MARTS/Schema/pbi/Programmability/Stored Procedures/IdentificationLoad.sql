-- =============================================
-- Author:        Дзреян К.Е..
-- Create date:   2024-02-26
-- Description:   Выгрузка витрины идентификаций клиентов pbi.Identification
-- =============================================
CREATE PROCEDURE pbi.IdentificationLoad
	@Reload BIT = 0
AS BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT, XACT_ABORT ON;

	SET @Reload = ISNULL(@Reload, 0);

	DECLARE 
		  @LogMessageText             XML
		, @Sender                     sysname       = OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)
		, @MessageText                VARCHAR(500)
		, @CurrentParams              NVARCHAR(MAX) = NULL
        , @LastLoadDate               DATETIME
		, @MARTS_INITIAL_DATE         DATE          = CAST(tz_work.prm_RegisterGet('MARTS_INITIAL_DATE', CAST('2019-01-01' AS DATE)) AS DATE)
        , @Query                      NVARCHAR(MAX) = N'
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SET NOCOUNT, XACT_ABORT ON;

SET @LastLoadDate = DATEADD(HOUR, -5, @LastLoadDate);--приведение к UTC и на всякий случай чуть больше захватим.

IF OBJECT_ID(''tempdb..#pbi_IdentificationLoad_bpm_part'') IS NOT NULL DROP TABLE #pbi_IdentificationLoad_bpm_part;
CREATE TABLE #pbi_IdentificationLoad_bpm_part
(
    ApplicationId UNIQUEIDENTIFIER NOT NULL PRIMARY KEY
);
INSERT INTO #pbi_IdentificationLoad_bpm_part (ApplicationId)
SELECT a.Id
FROM dbo.[Application] a
WHERE (@LastLoadDate IS NULL)
UNION
SELECT a.Id
FROM dbo.[Application] a
WHERE (@LastLoadDate IS NOT NULL AND a.CreatedOn>@LastLoadDate)

UNION
SELECT ai.ApplicationId
FROM dbo.ApplicationIntegration ai
WHERE (@LastLoadDate IS NOT NULL AND ai.ModifiedOn>@LastLoadDate)

UNION
SELECT asl.ApplicationId
FROM       dbo.AgredatorServiceLog asl
INNER JOIN dbo.AgredatorRequestLog r   ON r.ServiceLogId = asl.Id
WHERE   (@LastLoadDate IS NOT NULL 
         AND 
         (
		     asl.CreatedOn>@LastLoadDate
		         OR
		     r.RequestDate>@LastLoadDate
		         OR
		     r.ResponseDate>@LastLoadDate
		 )
	)
    AND (asl.ApplicationId IS NOT NULL)
    AND (asl.[Service]     IN (''pfr-snils-validation'', ''fns-paspinn''))
	AND (asl.Result        = 1)

UNION
SELECT a.Id
FROM       dbo.TinkoffIDResponseTrace tt
INNER JOIN dbo.[Application]           a ON a.ContactId = tt.ContactId
WHERE tt.ModifiedOn>@LastLoadDate;

IF OBJECT_ID(''tempdb..#pbi_IdentificationLoad_bpm_result'') IS NOT NULL DROP TABLE #pbi_IdentificationLoad_bpm_result;
CREATE TABLE #pbi_IdentificationLoad_bpm_result
(
	  ApplicationId      UNIQUEIDENTIFIER NOT NULL
	, ContactId          UNIQUEIDENTIFIER NOT NULL
	, FillingDate        DATETIME             NULL
	, PaymentDate        DATETIME             NULL
	, IsPFR              BIT                  NULL DEFAULT(0)
	, PFRDate            DATETIME             NULL
	, IsFNS              BIT                  NULL DEFAULT(0)
	, FNSDate            DATETIME             NULL
	, IsESIA             BIT                  NULL DEFAULT(0)
	, ESIADate           DATETIME             NULL
	, IsTinkoff          BIT                  NULL DEFAULT(0)
	, TinkoffDate        DATETIME             NULL
	, OldIdentDate       DATETIME             NULL
	, IsPersCab          BIT                  NULL DEFAULT(0)
	, HasCopiedScans     VARCHAR(15)          NULL
	, PersCabDate        DATETIME             NULL
	
	, RegPersCab         BIT                  NULL DEFAULT(0)
	, OldRegPersCabCount INT                  NULL DEFAULT(0)
	, RegPersCabCount    INT                  NULL DEFAULT(0)

	, PersCab            BIT                  NULL DEFAULT(0)
	, OldPersCabCount    INT                  NULL DEFAULT(0)
	, PersCabCount       INT                  NULL DEFAULT(0)
);
CREATE CLUSTERED INDEX PK_#pbi_IdentificationLoad_bpm_result on #pbi_IdentificationLoad_bpm_result(ApplicationId);
 
INSERT INTO #pbi_IdentificationLoad_bpm_result (ApplicationId, ContactId, FillingDate, PaymentDate, IsESIA, ESIADate, IsFNS, IsPFR, OldIdentDate, IsTinkoff, IsPersCab, PersCabDate)
SELECT 
      a.Id
	, a.ContactId
	, a.FillingDate
	, a.PaymentDate
	, ai.IdentificationEsia
	, ai.IdentificationEsiaDate
	, ai.IdentificationbyPFR
	, ai.IdentificationbyPFR
	, IIF(ai.CheckBankScoringId IS NULL, ai.OldIdentificationDate, NULL) -- если не указан CheckBankScoringId, то это заглядываение в пфр/фнс
	, ai.IdentificationByTinkoffID
	, ai.NoIdentification
	, ai.NoIdentificationDate
FROM       #pbi_IdentificationLoad_bpm_part p
INNER JOIN dbo.[Application]                a  ON a.Id             = p.ApplicationId
LEFT  JOIN dbo.ApplicationIntegration       ai ON ai.ApplicationId = a.Id

UPDATE a SET
	PFRDate = PFR.ResponseDate
FROM #pbi_IdentificationLoad_bpm_result a
INNER JOIN (
	SELECT l.ApplicationId, MAX(r.ResponseDate) as ResponseDate 
	FROM       dbo.AgredatorServiceLog l
	INNER JOIN #pbi_IdentificationLoad_bpm_result  i ON i.ApplicationId = l.ApplicationId
	INNER JOIN dbo.AgredatorRequestLog r ON r.ServiceLogId  = l.Id
	WHERE l.Service = ''PFR-snils-validation''
		AND l.Result = 1
	GROUP BY l.ApplicationId
) PFR ON PFR.ApplicationId = a.ApplicationId;

UPDATE a SET 
	FNSDate = fns.ResponseDate
from #pbi_IdentificationLoad_bpm_result a
INNER JOIN (
	SELECT l.ApplicationId, MAX(r.ResponseDate) AS ResponseDate 
	FROM       dbo.AgredatorServiceLog l
	INNER JOIN #pbi_IdentificationLoad_bpm_result  i ON i.ApplicationId = l.ApplicationId
	INNER JOIN dbo.AgredatorRequestLog r ON R.ServiceLogId  = l.Id
	WHERE l.Service = ''fns-paspinn''
		AND l.Result = 1
	GROUP BY l.ApplicationId
) fns ON fns.ApplicationId = a.ApplicationId;

UPDATE a SET 
	TinkoffDate = tf.CreatedOn
FROM #pbi_IdentificationLoad_bpm_result  a
INNER JOIN (
	SELECT i.ApplicationId, MAX(t.CreatedOn) AS CreatedOn
	FROM       dbo.TinkoffIDResponseTrace t
	INNER JOIN #pbi_IdentificationLoad_bpm_result     i ON i.ContactId = t.ContactId 
	                                                   AND t.CreatedOn < i.FillingDate
	GROUP BY i.ApplicationId
) tf ON tf.ApplicationId = a.ApplicationId;

UPDATE a SET 
	  RegPersCab         = 1
	, RegPersCabCount    = pcf.FileCount
	, OldRegPersCabCount = pcf.OrigCount
FROM #pbi_IdentificationLoad_bpm_result a
INNER JOIN (
	SELECT pcf.ApplicationId, COUNT(DISTINCT pcf.PersCabFileTypeId) AS Cnt, COUNT(pcf.Id) AS FileCount, SUM(IIF(pcf.OriginalFileId IS NULL, 0, 1)) AS OrigCount
	FROM       dbo.PersCabFile        pcf
	INNER JOIN #pbi_IdentificationLoad_bpm_result i   ON pcf.ApplicationId = i.ApplicationId
	WHERE pcf.PersCabFileTypeId IN (''AF1E9FBC-E315-4214-B458-5EF818B7DA8A'', ''574D5F75-D49F-430A-B990-DEF93A78F6DE'', ''583FEFEB-6238-4C30-A8E0-D89279D16970'')
	GROUP BY pcf.ApplicationId
	HAVING COUNT(DISTINCT pcf.PersCabFileTypeId)>=2
) pcf ON pcf.ApplicationId = a.ApplicationId;

UPDATE a SET 
	  PersCab         = 1
	, PersCabCount    = pcf.FileCount
	, OldPersCabCount = pcf.OrigCount
FROM #pbi_IdentificationLoad_bpm_result a
INNER JOIN (
	SELECT pcf.ApplicationId, COUNT(DISTINCT pcf.PersCabFileTypeId) AS Cnt, COUNT(pcf.Id) AS FileCount, SUM(IIF(pcf.OriginalFileId IS NULL, 0, 1)) AS OrigCount
	FROM       dbo.PersCabFile        pcf
	INNER JOIN #pbi_IdentificationLoad_bpm_result i   ON pcf.ApplicationId = i.ApplicationId
	WHERE pcf.PersCabFileTypeId IN (''1EA20110-999C-49D3-8D62-BAFCBC76895E'', ''999ACD2E-C742-481D-9FC1-B42E486E2A2D'', ''977587E6-18BA-40F4-9597-31423BE1A72B'')
	GROUP BY pcf.ApplicationId
	HAVING COUNT(DISTINCT pcf.PersCabFileTypeId)>=2	
) pcf ON pcf.ApplicationId = a.ApplicationId;

UPDATE #pbi_IdentificationLoad_bpm_result SET 
      HasCopiedScans = 
	  CASE
		 WHEN OldRegPersCabCount > 0 THEN IIF(RegPersCabCount = OldRegPersCabCount, ''Копии'', ''Часть копии'')
		 WHEN OldPersCabCount    > 0 THEN IIF(PersCabCount    = OldPersCabCount,    ''Копии'', ''Часть копии'')
		                             ELSE ''Новые''
	  END
	, IsPersCab   = IIF(RegPersCab = 1 OR PersCab = 1, 1, 0)
	, PersCabDate = IIF(RegPersCab = 1 OR PersCab = 1, PersCabDate, NULL);

SELECT ApplicationId, ContactId, FillingDate, PaymentDate, IsPFR, PFRDate, IsFNS, FNSDate, IsESIA, ESIADate, IsTinkoff, TinkoffDate, OldIdentDate, IsPersCab, PersCabDate, HasCopiedScans
FROM #pbi_IdentificationLoad_bpm_result;

IF OBJECT_ID(''tempdb..#pbi_IdentificationLoad_bpm_part'') IS NOT NULL DROP TABLE #pbi_IdentificationLoad_bpm_part;
IF OBJECT_ID(''tempdb..#pbi_IdentificationLoad_bpm_result'') IS NOT NULL DROP TABLE #pbi_IdentificationLoad_bpm_result;
'
        , @Params                     NVARCHAR(MAX) = N'@LastLoadDate DATETIME, @MARTS_INITIAL_DATE DATE';

	BEGIN TRY
		DECLARE @TRANCOUNT INT = @@TRANCOUNT;
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

		IF @Reload = 0
            SELECT @LastLoadDate = MAX(UpdateDate) FROM pbi.Identification;

		DROP TABLE IF EXISTS #pbi_IdentificationLoad_bpm_result;
		CREATE TABLE #pbi_IdentificationLoad_bpm_result
		(
			  ApplicationId  UNIQUEIDENTIFIER NOT NULL
			, ContactId      UNIQUEIDENTIFIER NOT NULL
			, FillingDate    DATETIME             NULL
			, PaymentDate    DATETIME             NULL
			, IsPFR          BIT                  NULL DEFAULT(0)
			, PFRDate        DATETIME             NULL
			, IsFNS          BIT                  NULL DEFAULT(0)
			, FNSDate        DATETIME             NULL
			, IsESIA         BIT                  NULL DEFAULT(0)
			, ESIADate       DATETIME             NULL
			, IsTinkoff      BIT                  NULL DEFAULT(0)
			, TinkoffDate    DATETIME             NULL
			, OldIdentDate   DATETIME             NULL
			, IsPersCab      BIT                  NULL DEFAULT(0)
			, PersCabDate    DATETIME             NULL
			, HasCopiedScans VARCHAR(15)          NULL
		);

		INSERT INTO #pbi_IdentificationLoad_bpm_result(ApplicationId, ContactId, FillingDate, PaymentDate, IsPFR, PFRDate, IsFNS, FNSDate, IsESIA, ESIADate, IsTinkoff, TinkoffDate, OldIdentDate, IsPersCab, PersCabDate, HasCopiedScans)
		EXEC [$(TZ_BPMONLINETZ_SRV)].[$(TZ_BPMONLINETZ_DB)].dbo.sp_executesql
		       @statement          = @Query
			 , @params             = @Params
			 , @LastLoadDate       = @LastLoadDate
			 , @MARTS_INITIAL_DATE = @MARTS_INITIAL_DATE;

		--Поиск пересечений
		DROP TABLE IF EXISTS #pbi_IdentificationLoad_bpm_cross;
		CREATE TABLE #pbi_IdentificationLoad_bpm_cross
		(
		    ApplicationId UNIQUEIDENTIFIER NOT NULL
		);
		CREATE CLUSTERED INDEX PK_#pbi_IdentificationLoad_bpm_cross ON #pbi_IdentificationLoad_bpm_cross(ApplicationId);

		INSERT INTO #pbi_IdentificationLoad_bpm_cross(ApplicationId)
		SELECT r.ApplicationId
		FROM       #pbi_IdentificationLoad_bpm_result r
		INNER JOIN pbi.Identification                 i ON i.ApplicationId = r.ApplicationId;

		BEGIN TRAN
		--Обновление тех, которые есть в витрине, но с другими данными
		UPDATE i SET
		      UpdateDate     = GETDATE()
			, FillingDate    = r.FillingDate
			, PaymentDate    = r.PaymentDate
			, IsPFR		     = r.IsPFR		   
			, PFRDate	     = r.PFRDate	   
			, IsFNS		     = r.IsFNS		   
			, FNSDate	     = r.FNSDate	   
			, IsESIA	     = r.IsESIA	   
			, ESIADate	     = r.ESIADate	   
			, IsTinkoff	     = r.IsTinkoff	   
			, TinkoffDate    = r.TinkoffDate  
			, OldIdentDate   = r.OldIdentDate 
			, IsPersCab	     = r.IsPersCab	   
			, PersCabDate    = r.PersCabDate 
			, HasCopiedScans = r.HasCopiedScans
		FROM (
			SELECT r.ApplicationId, r.FillingDate, r.PaymentDate, r.IsPFR, r.PFRDate, r.IsFNS, r.FNSDate, r.IsESIA, r.ESIADate, r.IsTinkoff, r.TinkoffDate, r.OldIdentDate, r.IsPersCab, r.PersCabDate, r.HasCopiedScans
			FROM (
				SELECT r.ApplicationId, r.FillingDate, r.PaymentDate, r.IsPFR, r.PFRDate, r.IsFNS, r.FNSDate, r.IsESIA, r.ESIADate, r.IsTinkoff, r.TinkoffDate, r.OldIdentDate, r.IsPersCab, r.PersCabDate, r.HasCopiedScans
				FROM       #pbi_IdentificationLoad_bpm_cross  c
				INNER JOIN #pbi_IdentificationLoad_bpm_result r ON r.ApplicationId = c.ApplicationId
			) r
			EXCEPT
			(
				SELECT r.ApplicationId, r.FillingDate, r.PaymentDate, r.IsPFR, r.PFRDate, r.IsFNS, r.FNSDate, r.IsESIA, r.ESIADate, r.IsTinkoff, r.TinkoffDate, r.OldIdentDate, r.IsPersCab, r.PersCabDate, r.HasCopiedScans
				FROM (
					SELECT r.ApplicationId, r.FillingDate, r.PaymentDate, r.IsPFR, r.PFRDate, r.IsFNS, r.FNSDate, r.IsESIA, r.ESIADate, r.IsTinkoff, r.TinkoffDate, r.OldIdentDate, r.IsPersCab, r.PersCabDate, r.HasCopiedScans
					FROM       #pbi_IdentificationLoad_bpm_cross c
					INNER JOIN pbi.Identification                r ON r.ApplicationId = c.ApplicationId
				) r
			)
		) r 
		INNER JOIN pbi.Identification i ON i.ApplicationId = r.ApplicationId;

		--Внесение новых
		INSERT INTO pbi.Identification(UpdateDate, ApplicationId, ContactId, FillingDate, PaymentDate, IsPFR, PFRDate, IsFNS, FNSDate, IsESIA, ESIADate, IsTinkoff, TinkoffDate, OldIdentDate, IsPersCab, PersCabDate, HasCopiedScans)
		SELECT GETDATE(), r.ApplicationId, r.ContactId, r.FillingDate, r.PaymentDate, r.IsPFR, r.PFRDate, r.IsFNS, r.FNSDate, r.IsESIA, r.ESIADate, r.IsTinkoff, r.TinkoffDate, r.OldIdentDate, r.IsPersCab, r.PersCabDate, r.HasCopiedScans
		FROM      #pbi_IdentificationLoad_bpm_result r
		LEFT JOIN pbi.Identification                 i ON r.ApplicationId = i.ApplicationId
		WHERE i.ApplicationId IS NULL;

        EXEC tz_work.log_RegisterInsert
              @BatchId          = NULL
            , @ObjectRegisterId = NULL
            , @StatusCode       = 'MART_LOAD_FINISH'
            , @MessageText      = @LogMessageText
            , @Sender           = @Sender
            , @Params           = NULL
            , @ErrorLevel       = 0;
		
		COMMIT TRAN;

		DROP TABLE IF EXISTS #pbi_IdentificationLoad_bpm_result, #pbi_IdentificationLoad_bpm_cross;
	END TRY
	BEGIN CATCH
		SET @MessageText    = ERROR_MESSAGE();
        SET @LogMessageText = (SELECT @MessageText AS ErrorText FOR XML PATH('Params'));

        WHILE(@@TRANCOUNT > @TRANCOUNT) 
			ROLLBACK TRANSACTION;

        EXEC tz_work.log_RegisterInsert
              @BatchId          = NULL
            , @ObjectRegisterId = NULL
            , @StatusCode       = 'ERROR'
            , @MessageText      = @LogMessageText
            , @Sender           = @Sender
            , @Params           = NULL
            , @ErrorLevel       = 0;

		THROW 50001, @MessageText, 1;

		DROP TABLE IF EXISTS #pbi_IdentificationLoad_bpm_result, #pbi_IdentificationLoad_bpm_cross;

        RETURN 1;
	END CATCH;

	RETURN 0;
END;
GO
GRANT EXEC ON pbi.IdentificationLoad TO tz_report;
