CREATE TABLE tz.ApplicationDecision
(
	  Id                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_ApplicationDecision PRIMARY KEY
	, BatchId                   BIGINT           NOT NULL
	, ApplicationDecision_RK    BIGINT               NULL 

    , EffectiveDateFrom         DATETIME             NULL
    , EffectiveDateTill         DATETIME             NULL
    , DataSourceName            VARCHAR(50)          NULL
    , IsNew                     BIT                  NULL

	, ApplicationDecisionId     UNIQUEIDENTIFIER     NULL
	, [Name]                    NVARCHAR(500)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationDecision_BatchId ON tz.ApplicationDecision(BatchId, ApplicationDecisionId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.ApplicationDecision TO tz_report;