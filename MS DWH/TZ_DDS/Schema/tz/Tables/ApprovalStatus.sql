CREATE TABLE tz.ApprovalStatus
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_ApprovalStatus PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
	, ApprovalStatus_RK                         BIGINT               NULL

	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

    , ApprovalStatusId                          UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , [Description]                             NVARCHAR(500)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_ApprovalStatus_BatchId ON tz.ApprovalStatus(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApprovalStatus_Key ON tz.ApprovalStatus(BatchId, ApprovalStatusId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.ApprovalStatus TO tz_report;