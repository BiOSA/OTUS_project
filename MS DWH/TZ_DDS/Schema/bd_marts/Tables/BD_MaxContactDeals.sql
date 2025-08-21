CREATE TABLE bd_marts.BD_MaxContactDeals
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_Busyness PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

    , FIO                                       NVARCHAR(1500)       NULL
    , BirthDate                                 DATE                 NULL
    , PassportSeries                            VARCHAR(4)           NULL
    , PassportNumber                            VARCHAR(6)           NULL
    , NumLoans                                  INT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_bd_marts_BD_MaxContactDeals_Period ON bd_marts.BD_MaxContactDeals(EffectiveDateFrom, EffectiveDateTill) INCLUDE (FIO,BirthDate,PassportSeries,PassportNumber,NumLoans);
GO
CREATE NONCLUSTERED INDEX IX_bd_marts_BD_MaxContactDeals_Key ON bd_marts.BD_MaxContactDeals(BatchId, FIO, BirthDate, PassportSeries, PassportNumber) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON bd_marts.BD_MaxContactDeals TO tz_report;