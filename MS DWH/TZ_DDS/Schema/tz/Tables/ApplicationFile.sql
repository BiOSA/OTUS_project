CREATE TABLE tz.ApplicationFile
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_ApplicationFile PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

	, Account_RK                                BIGINT               NULL
    
	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, ApplicationFileId                         UNIQUEIDENTIFIER     NULL
	, ApplicationId                             UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationFile_BatchId ON tz.ApplicationFile(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationFile_Key ON tz.ApplicationFile(BatchId, ApplicationFileId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.ApplicationFile TO tz_report;