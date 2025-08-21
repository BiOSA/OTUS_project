CREATE TABLE dbo.SOURCE_SYSTEM_TABLE
(
	  Id                        INT        NOT NULL IDENTITY(1,1) CONSTRAINT PK_dbo_SOURCE_SYSTEM_TABLE PRIMARY KEY
	, SourceTableName           sysname    NOT NULL
	, SOURCE_SYSTEM_CD          VARCHAR(3) NOT NULL               CONSTRAINT FK_dbo_SOURCE_SYSTEM_TABLE_dbo_SOURCE_SYSTEM REFERENCES dbo.SOURCE_SYSTEM ON UPDATE CASCADE ON DELETE CASCADE
	, ConvTableName             sysname    NOT NULL
	, SourceIdColumnName        sysname    NOT NULL
	, SourceRKColumnName        sysname    NOT NULL
)
GO
GRANT SELECT ON SOURCE_SYSTEM_TABLE TO [1c_dwh]