CREATE TABLE dds.ContactSource
(
	  Id                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_ContactSource PRIMARY KEY
	, BatchId                   BIGINT           NOT NULL
	, ContactSource_RK    BIGINT               NULL 

    , EffectiveDateFrom         DATETIME             NULL
    , EffectiveDateTill         DATETIME             NULL
    , DataSourceName            VARCHAR(50)          NULL
    , IsNew                     BIT                  NULL

	, ContactSourceId     UNIQUEIDENTIFIER     NULL
	, [Name]                    NVARCHAR(500)        NULL
	, ContactSourceGroupId     UNIQUEIDENTIFIER     NULL
)