CREATE TABLE tz.VerificationListResult
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, VerificationListResultId                  UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_VerificationListResult_BatchId ON tz.VerificationListResult(BatchId, VerificationListResultId);
GO
CREATE NONCLUSTERED INDEX IX_tz_VerificationListResult_ApplicationId ON tz.VerificationListResult(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.VerificationListResult TO tz_report;