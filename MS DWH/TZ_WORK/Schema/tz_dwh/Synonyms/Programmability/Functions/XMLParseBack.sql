CREATE SYNONYM tz_dwh.XMLParseBack
	FOR [$(TZ_DWH_DB)].dbo.XMLParseBack;
GO
GRANT EXEC ON tz_dwh.XMLParseBack TO tz_report;