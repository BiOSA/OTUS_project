CREATE TABLE tz.AgredatorServiceLog
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AgredatorServiceLogId                     UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , [Service]                                 NVARCHAR(200)        NULL
    , Result                                    BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AgredatorServiceLog_BatchId ON tz.AgredatorServiceLog(BatchId, AgredatorServiceLogId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AgredatorServiceLog_ApplicationId ON tz.AgredatorServiceLog(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AgredatorServiceLog TO tz_report;