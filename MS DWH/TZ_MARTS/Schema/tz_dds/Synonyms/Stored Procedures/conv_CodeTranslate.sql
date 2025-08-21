CREATE SYNONYM tz_dds.conv_CodeTranslate
	FOR [$(TZ_DDS_DB)].conv.CodeTranslate;
GO
GRANT EXEC ON tz_dds.conv_CodeTranslate TO [1c_dwh]