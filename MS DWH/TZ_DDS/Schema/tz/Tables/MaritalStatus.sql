CREATE TABLE tz.MaritalStatus
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_MaritalStatus PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
	, MaritalStatus_RK                          BIGINT               NULL 

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, MaritalStatusId                           UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
	, Code		                                NVARCHAR(100)		 NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_MaritalStatus_BatchId ON tz.MaritalStatus(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_MaritalStatus_Key ON tz.MaritalStatus(BatchId, MaritalStatusId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.MaritalStatus TO tz_report;