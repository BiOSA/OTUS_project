CREATE TABLE tz.TinkoffIDResponseTrace
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, TinkoffIDResponseTraceId                  UNIQUEIDENTIFIER     NULL
    , MobilePhone                               NVARCHAR(500)        NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_TinkoffIDResponseTrace_BatchId ON tz.TinkoffIDResponseTrace(BatchId, TinkoffIDResponseTraceId);
GO
CREATE NONCLUSTERED INDEX IX_tz_TinkoffIDResponseTrace_ApplicationId ON tz.TinkoffIDResponseTrace(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.TinkoffIDResponseTrace TO tz_report;