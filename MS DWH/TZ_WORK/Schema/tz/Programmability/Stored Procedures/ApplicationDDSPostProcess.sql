-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2023-12-27
-- Description:	Заполнение полей для слоя DDS для tz.Application. Запускается из dbo.AbstractObjectDDSProcess
-- EXEC tz.ApplicationDDSPostProcess 1
CREATE PROCEDURE tz.ApplicationDDSPostProcess
    @BatchDetailId BIGINT
AS BEGIN
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

    DECLARE @BatchId BIGINT;

    SELECT @BatchId = bd.BatchId
    FROM       dbo.ObjectRegister sr
    INNER JOIN dbo.BatchDetail   bd ON sr.ObjectRegisterId = bd.ObjectRegisterId
    WHERE  bd.BatchDetailId = @BatchDetailId;

    --маркетинговые штучки
    --поиск деталей в источнике заявки
    UPDATE s SET
          MarketingWeb    = IIF(wmid_prep IS NOT NULL AND CHARINDEX('&', wmid_prep)>0, LEFT(wmid_prep, CHARINDEX('&', wmid_prep)-1), wmid_prep)
    	, MarketingSource = IIF(utm_source_prep IS NOT NULL AND CHARINDEX('&', utm_source_prep)>0, LEFT(utm_source_prep, CHARINDEX('&', utm_source_prep)-1), utm_source_prep)
    	, LandingSource   = LandingSourceNew
    FROM (
    	SELECT MarketingSource, MarketingWeb, LandingSource
    		, IIF(CHARINDEX('wmid=', SourceURL)>0, RIGHT(SourceURL, LEN(SourceURL)-CHARINDEX('wmid=', SourceURL) - LEN('wmid=') + 1), NULL)                   AS wmid_prep
    		, IIF(CHARINDEX('utm_source=', SourceURL)>0, RIGHT(SourceURL, LEN(SourceURL)-CHARINDEX('utm_source=', SourceURL) - LEN('utm_source=') + 1), NULL) AS utm_source_prep
    		, IIF(CHARINDEX('?', SourceURL)>0
    		      , LEFT(SourceURL, CHARINDEX('?', SourceURL)-1)
    			  , IIF(ISNULL(SourceURL,'')!='', SourceURL, NULL)
    		  ) AS LandingSourceNew
    	FROM tz_dds.[Application] a
        WHERE a.BatchId = @BatchId
    ) s;
END;
GO
GRANT EXEC ON tz.ApplicationDDSPostProcess TO tz_report;