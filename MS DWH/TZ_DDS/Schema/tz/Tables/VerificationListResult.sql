CREATE TABLE tz.VerificationListResult
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_VerificationListResult PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    , VerificationListResult_RK                 BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
    , DataSourceName                            VARCHAR(50)          NULL
    , IsNew                                     BIT                  NULL

	, VerificationListResultId                  UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_VerificationListResult_BatchId ON tz.VerificationListResult(BatchId, VerificationListResultId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.VerificationListResult TO tz_report;