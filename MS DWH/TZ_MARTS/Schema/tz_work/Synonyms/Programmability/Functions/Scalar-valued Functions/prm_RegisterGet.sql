CREATE SYNONYM tz_work.prm_RegisterGet
	FOR [$(TZ_WORK_DB)].prm.RegisterGet;
GO
GRANT EXEC ON tz_work.prm_RegisterGet TO [1c_dwh];