CREATE TABLE tz.AdditionalProductStatus
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_AdditionalProductStatus PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
	, AdditionalProductStatus_RK                BIGINT               NULL

	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

    , AdditionalProductStatusId                 UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProductStatus_BatchId ON tz.AdditionalProductStatus(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProductStatus_Key ON tz.AdditionalProductStatus(BatchId, AdditionalProductStatusId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.AdditionalProductStatus TO tz_report;