CREATE TABLE tz.ApplicationTestParameters
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_ApplicationTestParameters PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, ApplicationTestParametersId               UNIQUEIDENTIFIER     NULL
	, CreatedOn		                            DATETIME             NULL
	, ApplicationId                             UNIQUEIDENTIFIER	NULL
	, Account_RK                                BIGINT               NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationTestParameters_BatchId ON tz.ApplicationTestParameters(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationTestParameters_Key ON tz.ApplicationTestParameters(BatchId, Account_RK) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.ApplicationTestParameters TO tz_report;