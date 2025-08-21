CREATE TABLE tz.VerificationListItem
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_VerificationListItem PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    , VerificationListItem_RK                   BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
    , DataSourceName                            VARCHAR(50)          NULL
    , IsNew                                     BIT                  NULL

    , VerificationListItemId                    UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_VerificationListItem_BatchId ON tz.[Verification](BatchId, VerificationListItemId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.VerificationListItem TO tz_report;