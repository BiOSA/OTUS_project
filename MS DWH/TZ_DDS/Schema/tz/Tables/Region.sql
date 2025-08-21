CREATE TABLE tz.Region
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_Region PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , Region_RK                                 BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, RegionId                                  UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
    , CountryId                                 UNIQUEIDENTIFIER     NULL
    , Code                                      NVARCHAR(100)        NULL
    , Abbreviation                              NVARCHAR(100)        NULL
    , OkbCode                                   NVARCHAR(100)        NULL
    , RegionAoGuid                              UNIQUEIDENTIFIER     NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_Region_BatchId ON tz.Region(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Region_Key ON tz.Region(BatchId, Region_RK) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.Region TO tz_report;