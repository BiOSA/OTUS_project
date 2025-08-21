CREATE TABLE pbi.Identification
(
	  Id             BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_spr_Identification PRIMARY KEY
	, UpdateDate     DATETIME         NOT NULL                CONSTRAINT DF_pbi_Identification DEFAULT(GETDATE())
	, ApplicationId  UNIQUEIDENTIFIER NOT NULL
	, ContactId      UNIQUEIDENTIFIER NOT NULL
	, FillingDate    DATETIME             NULL
	, PaymentDate    DATETIME             NULL
	, IsPFR          BIT                  NULL
	, PFRDate        DATETIME             NULL
	, IsFNS          BIT                  NULL
	, FNSDate        DATETIME             NULL
	, IsESIA         BIT                  NULL
	, ESIADate       DATETIME             NULL
	, IsTinkoff      BIT                  NULL
	, TinkoffDate    DATETIME             NULL
	, OldIdentDate   DATETIME             NULL
	, IsPersCab      BIT                  NULL
	, PersCabDate    DATETIME             NULL
	, HasCopiedScans VARCHAR(15)          NULL
)
GO
CREATE UNIQUE NONCLUSTERED INDEX IX_pbi_Identification_ApplicationId ON pbi.Identification (ApplicationId);
GO
CREATE NONCLUSTERED INDEX IX_pbi_Identification_UpdateDate ON pbi.Identification (UpdateDate);
GO
GRANT SELECT ON pbi.Identification TO [MMK\sfedotova];