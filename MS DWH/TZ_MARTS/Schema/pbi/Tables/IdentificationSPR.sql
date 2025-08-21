CREATE TABLE pbi.IdentificationSPR
(
	  Id             BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_pbi_IdentificationSPR PRIMARY KEY
	, UpdateDate     DATETIME         NOT NULL                CONSTRAINT DF_pbi_IdentificationSPR DEFAULT(GETDATE())
	, ApplicationId  UNIQUEIDENTIFIER NOT NULL
	, ContactId      UNIQUEIDENTIFIER NOT NULL
	, FillingDate    DATETIME             NULL
	, PaymentDate    DATETIME             NULL
	, RequestDate    DATETIME             NULL
	
	, PFRFNSDate     DATETIME             NULL
	, OldGosusDate   DATETIME             NULL
	, CurGosusDate   DATETIME             NULL
	, ScanDate       DATETIME             NULL
	, TinkoffDate    DATETIME             NULL
	, WOScan         DATETIME             NULL
)
GO
CREATE UNIQUE NONCLUSTERED INDEX IX_pbi_IdentificationSPR_ApplicationId ON pbi.IdentificationSPR (ApplicationId);
GO
CREATE NONCLUSTERED INDEX IX_pbi_IdentificationSPR_UpdateDate ON pbi.IdentificationSPR (UpdateDate);
GO
GRANT SELECT ON pbi.IdentificationSPR TO [MMK\sfedotova];
GO
GRANT SELECT ON pbi.IdentificationSPR TO [MMK\pdmitriev];