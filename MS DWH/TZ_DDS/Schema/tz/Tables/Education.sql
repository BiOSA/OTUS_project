CREATE TABLE tz.Education
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_Education PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
	, Education_RK                              BIGINT               NULL 
    
	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, EducationId                               UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
	, Code		                                NVARCHAR(100)		 NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_Education_BatchId ON tz.Education(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Education_Key ON tz.Education(BatchId, EducationId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.Education TO tz_report;