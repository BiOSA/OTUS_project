CREATE TABLE tz.DecisionReasons
(
	  Id                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_DecisionReasons PRIMARY KEY
	, BatchId                   BIGINT           NOT NULL
	, DecisionReason_RK         BIGINT               NULL 

    , EffectiveDateFrom         DATETIME             NULL
    , EffectiveDateTill         DATETIME             NULL
    , DataSourceName            VARCHAR(50)          NULL
    , IsNew                     BIT                  NULL

	, DecisionReasonsId         UNIQUEIDENTIFIER     NULL
	, [Name]                    NVARCHAR(500)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_DecisionReasons_BatchId ON tz.DecisionReasons(BatchId, DecisionReasonsId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.DecisionReasons TO tz_report;