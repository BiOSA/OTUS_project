CREATE TABLE tz.AgredatorRequestLog
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AgredatorRequestLogId                     UNIQUEIDENTIFIER     NULL
    , ServiceLogId                              UNIQUEIDENTIFIER     NULL
    , RequestUrl                                NVARCHAR(1000)       NULL
    , RequestDate                               DATETIME             NULL
    , Request                                   NVARCHAR(MAX)        NULL
    , ResponseDate                              DATETIME             NULL
    , Response                                  NVARCHAR(MAX)        NULL
    , [Status]                                  NVARCHAR(100)        NULL
    , Error                                     NVARCHAR(MAX)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AgredatorRequestLog_BatchId ON tz.AgredatorRequestLog(BatchId, AgredatorRequestLogId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AgredatorRequestLog_ApplicationId ON tz.AgredatorRequestLog(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AgredatorRequestLog TO tz_report;