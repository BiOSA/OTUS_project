CREATE TABLE bd_marts.BD_MaxContactDeals
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , FIO                                       NVARCHAR(1500)       NULL
    , BirthDate                                 DATE                 NULL
    , PassportSeries                            VARCHAR(4)           NULL
    , PassportNumber                            VARCHAR(6)           NULL
    , NumLoans                                  INT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_bd_marts_BD_MaxContactDeals_BatchId ON bd_marts.BD_MaxContactDeals(BatchId, FIO, BirthDate, PassportSeries, PassportNumber);
GO
CREATE NONCLUSTERED INDEX IX_bd_marts_BD_MaxContactDeals_ApplicationId ON bd_marts.BD_MaxContactDeals(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON bd_marts.BD_MaxContactDeals TO tz_report;