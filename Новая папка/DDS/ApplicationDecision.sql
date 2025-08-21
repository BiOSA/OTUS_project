CREATE TABLE dds.ApplicationDecision
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