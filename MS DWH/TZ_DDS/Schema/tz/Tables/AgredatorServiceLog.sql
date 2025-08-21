CREATE TABLE tz.AgredatorServiceLog
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_AgredatorServiceLog PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , AgredatorServiceLog_RK                    BIGINT               NULL
    , Account_RK                                BIGINT               NULL
    
	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

    , AgredatorServiceLogId                     UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , [Service]                                 NVARCHAR(200)        NULL
    , Result                                    BIT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_AgredatorServiceLog_BatchId ON tz.AgredatorServiceLog(BatchId, EffectiveDateFrom) INCLUDE(Account_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_AgredatorServiceLog_Key ON tz.AgredatorServiceLog(ApplicationId, [Service], EffectiveDateFrom, EffectiveDateTill) INCLUDE (AgredatorServiceLogId);
GO
GRANT DELETE, INSERT, UPDATE ON tz.AgredatorServiceLog TO tz_report;