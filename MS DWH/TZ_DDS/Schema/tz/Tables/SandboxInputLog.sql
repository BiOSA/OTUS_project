CREATE TABLE tz.SandboxInputLog
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_SandboxInputLog PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , Account_RK                                BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
    , DataSourceName                            VARCHAR(50)          NULL
    , IsNew                                     BIT                  NULL

    , SandboxInputLogId                         UNIQUEIDENTIFIER     NULL    
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , RequestDate                               DATETIME             NULL
    , Decision                                  NVARCHAR(500)        NULL
    , Comment                                   NVARCHAR(500)        NULL
    , ApplicationRefinancingId                  UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , IsRefinanced                              BIT                  NULL
    , IsAutoApproved                            BIT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_SandboxInputLog_BatchId ON tz.SandboxInputLog(BatchId, EffectiveDateFrom) INCLUDE (Account_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_SandboxInputLog_KeyId ON tz.SandboxInputLog(Account_RK, EffectiveDateFrom, EffectiveDateTill) INCLUDE (RequestDate, Decision);
GO
CREATE NONCLUSTERED INDEX IX_tz_SandboxInputLog_ApplicationRefinancingId ON [tz].[SandboxInputLog] ([ApplicationRefinancingId],[Decision]) INCLUDE ([EffectiveDateFrom],[EffectiveDateTill],Account_RK,[Comment],[CreatedOn]);
GO
GRANT DELETE, INSERT, UPDATE ON tz.SandboxInputLog TO tz_report;