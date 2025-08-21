CREATE SYNONYM tz_dwh.report_BKIOneSPortfolioDiffRefresh
	FOR [$(TZ_DWH_DB)].report.BKIOneSPortfolioDiffRefresh;
GO
GRANT EXECUTE ON tz_dwh.report_BKIOneSPortfolioDiffRefresh TO [1c_dwh];
