CREATE TABLE tz.AgredatorRequestLog
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_AgredatorRequestLog PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
    , AgredatorRequestLog_RK                    BIGINT               NULL
    , AgredatorServiceLog_RK                    BIGINT               NULL

	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

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
CREATE NONCLUSTERED INDEX IX_tz_AgredatorRequestLog_BatchId ON tz.AgredatorRequestLog(BatchId, EffectiveDateFrom) INCLUDE (AgredatorServiceLog_RK, ServiceLogId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AgredatorRequestLog_Key ON tz.AgredatorRequestLog(ServiceLogId, RequestUrl, EffectiveDateFrom, EffectiveDateTill);
GO
CREATE NONCLUSTERED INDEX IX_tz_AgredatorRequestLog_Period ON tz.AgredatorRequestLog (EffectiveDateFrom,EffectiveDateTill) INCLUDE (ServiceLogId);
GO
GRANT DELETE, INSERT, UPDATE ON tz.AgredatorRequestLog TO tz_report;