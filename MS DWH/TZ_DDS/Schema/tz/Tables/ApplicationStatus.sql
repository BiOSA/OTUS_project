CREATE TABLE tz.ApplicationStatus
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_ApplicationStatus PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
	, ApplicationStatus_RK                      BIGINT               NULL 
    
	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL
	
	, ApplicationStatusId	                    UNIQUEIDENTIFIER	 NULL
	, [Name]                                    NVARCHAR(500)        NULL
);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationStatus_BatchId ON tz.ApplicationStatus(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationStatus_Key ON tz.ApplicationStatus(BatchId, ApplicationStatusId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.ApplicationStatus TO tz_report;