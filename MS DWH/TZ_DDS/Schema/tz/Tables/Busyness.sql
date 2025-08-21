CREATE TABLE tz.Busyness
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_Busyness PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
	, Busyness_RK                               BIGINT               NULL 
    
	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, BusynessId                                UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_Busyness_BatchId ON tz.Busyness(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Busyness_Key ON tz.Busyness(BatchId, BusynessId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.Busyness TO tz_report;