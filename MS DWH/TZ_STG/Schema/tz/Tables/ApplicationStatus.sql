CREATE TABLE tz.ApplicationStatus
(
	  BatchId				    BIGINT				NOT NULL
	, EffectiveDate			    DATETIME			NOT NULL
	
	, ApplicationStatusId	    UNIQUEIDENTIFIER		NULL
	, [Name]                    NVARCHAR(500)           NULL
);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationStatus_BatchId ON tz.ApplicationStatus(BatchId, ApplicationStatusId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationStatus TO tz_report;
