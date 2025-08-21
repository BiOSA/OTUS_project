CREATE TABLE tz.ApplicationTestParameters
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ApplicationTestParametersId               UNIQUEIDENTIFIER     NULL
	, CreatedOn		                            DATETIME             NULL
	, ApplicationId                             UNIQUEIDENTIFIER	NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationTestParameters_BatchId ON tz.ApplicationTestParameters(BatchId, ApplicationTestParametersId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationTestParameters_ApplicationId ON tz.ApplicationTestParameters(ApplicationId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationTestParameters TO tz_report;