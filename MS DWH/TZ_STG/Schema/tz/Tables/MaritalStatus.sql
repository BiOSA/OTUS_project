CREATE TABLE tz.MaritalStatus
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, MaritalStatusId                           UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
	, Code		                                NVARCHAR(100)		 NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_MaritalStatus_BatchId ON tz.MaritalStatus(BatchId, MaritalStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_MaritalStatus_ApplicationId ON tz.MaritalStatus(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.MaritalStatus TO tz_report;