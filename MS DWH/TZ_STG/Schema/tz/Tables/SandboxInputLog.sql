CREATE TABLE tz.SandboxInputLog
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL

    , SandboxInputLogId                         UNIQUEIDENTIFIER     NULL    
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , RequestDate                               DATETIME             NULL
    , Decision                                  NVARCHAR(500)        NULL
    , Comment                                   NVARCHAR(500)        NULL
    , ApplicationRefinancingId                  UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_SandboxInputLog_BatchId ON tz.SandboxInputLog(ApplicationId, EffectiveDate) INCLUDE(RequestDate, Decision);
GO
GRANT DELETE, INSERT ON tz.SandboxInputLog TO tz_report;