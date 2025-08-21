CREATE TABLE tz.Region
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, RegionId                                  UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
    , CountryId                                 UNIQUEIDENTIFIER     NULL
    , Code                                      NVARCHAR(100)        NULL
    , Abbreviation                              NVARCHAR(100)        NULL
    , OkbCode                                   NVARCHAR(100)        NULL
    , RegionAoGuid                              UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Region_BatchId ON tz.Region(BatchId, RegionId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Region_ApplicationId ON tz.Region(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Region TO tz_report;