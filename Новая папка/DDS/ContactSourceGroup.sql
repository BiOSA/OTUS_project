CREATE TABLE dds.ContactSourceGroup
(
	  Id                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_ContactSourceGroup PRIMARY KEY
	, BatchId                   BIGINT           NOT NULL
	, ContactSourceGroup_RK    BIGINT               NULL 

    , EffectiveDateFrom         DATETIME             NULL
    , EffectiveDateTill         DATETIME             NULL
    , DataSourceName            VARCHAR(50)          NULL
    , IsNew                     BIT                  NULL

	, ContactSourceGroupId     UNIQUEIDENTIFIER     NULL
	, [Name]                    NVARCHAR(500)        NULL
)