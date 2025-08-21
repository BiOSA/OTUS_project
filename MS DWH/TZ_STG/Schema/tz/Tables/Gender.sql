CREATE TABLE tz.Gender
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, GenderId                                  UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
	, OkbCode		                            NVARCHAR(100)		 NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Gender_BatchId ON tz.Gender(BatchId, GenderId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Gender_ApplicationId ON tz.Gender(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Gender TO tz_report;