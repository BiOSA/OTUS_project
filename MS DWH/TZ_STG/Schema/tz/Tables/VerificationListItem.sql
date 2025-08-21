CREATE TABLE tz.VerificationListItem
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , VerificationListItemId                    UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_VerificationListItem_BatchId ON tz.VerificationListItem(BatchId, VerificationListItemId);
GO
CREATE NONCLUSTERED INDEX IX_tz_VerificationListItem_ApplicationId ON tz.VerificationListItem(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.VerificationListItem TO tz_report;