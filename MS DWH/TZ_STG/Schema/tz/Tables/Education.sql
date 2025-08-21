CREATE TABLE tz.Education
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, EducationId                               UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
	, Code		                                NVARCHAR(100)		 NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Education_BatchId ON tz.Education(BatchId, EducationId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Education_ApplicationId ON tz.Education(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Education TO tz_report;