CREATE TABLE tz.Gender
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_Gender PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
	, Gender_RK                                 BIGINT               NULL 

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, GenderId                                  UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
	, OkbCode		                            NVARCHAR(100)		 NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_Gender_BatchId ON tz.Gender(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Gender_Key ON tz.Gender(BatchId, GenderId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.Gender TO tz_report;