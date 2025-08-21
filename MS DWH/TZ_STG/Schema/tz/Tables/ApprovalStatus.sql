CREATE TABLE tz.ApprovalStatus
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ApprovalStatusId                          UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , [Description]                             NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApprovalStatus_BatchId ON tz.ApprovalStatus(BatchId, ApprovalStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApprovalStatus_ApplicationId ON tz.ApprovalStatus(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApprovalStatus TO tz_report;