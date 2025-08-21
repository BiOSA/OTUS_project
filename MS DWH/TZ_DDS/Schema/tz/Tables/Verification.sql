CREATE TABLE tz.Verification
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_Verification PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
    , Verification_RK                           BIGINT               NULL
    , Account_RK                                BIGINT               NULL
    , VerificationListItem_RK                   BIGINT               NULL
    , VerificationListResult_RK                 BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
    , DataSourceName                            VARCHAR(50)          NULL
    , IsNew                                     BIT                  NULL

	, VerificationId                            UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , VerificationListItemId                    UNIQUEIDENTIFIER     NULL
    , Position                                  INT                  NULL
    , ResultId                                  UNIQUEIDENTIFIER     NULL
    , Comment                                   NVARCHAR(MAX)        NULL
    , Verified                                  BIT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_Verification_Verification_RK           ON tz.Verification (Verification_RK) INCLUDE (VerificationId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Verification_Account_RK                ON tz.Verification (BatchId, Account_RK, EffectiveDateFrom) INCLUDE (Comment);
GO
CREATE NONCLUSTERED INDEX IX_tz_Verification_VerificationListResult_RK ON tz.Verification (VerificationListResult_RK) INCLUDE (Account_RK,VerificationListItem_RK,EffectiveDateFrom,EffectiveDateTill,Position);
GO
CREATE NONCLUSTERED INDEX IX_tz_Verification_VerificationId            ON tz.Verification (VerificationId, Verification_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_Verification_VerificationId_Account_RK ON tz.Verification (Account_RK, ApplicationId)
GO
CREATE NONCLUSTERED INDEX IX_tz_Verification_VerificationId_VerificationListItemId ON tz.Verification (VerificationListItemId, VerificationListItem_RK)
GO
CREATE NONCLUSTERED INDEX IX_tz_Verification_VerificationId_ResultId ON tz.Verification (ResultId, VerificationListResult_RK)
GO
GRANT DELETE, INSERT, UPDATE ON tz.Verification TO tz_report;