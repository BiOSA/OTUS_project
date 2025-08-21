CREATE TABLE tz.Verification
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, VerificationId                            UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , VerificationListItemId                    UNIQUEIDENTIFIER     NULL
    , Position                                  INT                  NULL
    , ResultId                                  UNIQUEIDENTIFIER     NULL
    , Comment                                   NVARCHAR(MAX)        NULL
    , Verified                                  BIT                  NULL

    , Verification_RK                           BIGINT               NULL
    , Account_RK                                BIGINT               NULL
    , VerificationListItem_RK                   BIGINT               NULL
    , VerificationListResult_RK                 BIGINT               NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Verification_BatchId ON tz.Verification(BatchId, VerificationId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Verification_ApplicationId ON tz.Verification(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Verification TO tz_report;