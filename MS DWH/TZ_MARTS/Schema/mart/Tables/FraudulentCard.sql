CREATE TABLE mart.FraudulentCard
(
	  ApplicationId     UNIQUEIDENTIFIER NOT NULL
	, ApplicationNumber VARCHAR(50)      NOT NULL
	, Account_RK        BIGINT               NULL
	, UpdateDate        DATETIME         NOT NULL CONSTRAINT DF_mart_FraudulentCard_UpdateDate DEFAULT(GETDATE())
	, FraudTagAddDate   DATETIME         NOT NULL
	, ProceededOn       DATETIME             NULL
	, FIO               VARCHAR(150)     NOT NULL
	, BirthDate         DATE             NOT NULL
    , DocumentSeries    VARCHAR(50)      NOT NULL
    , DocumentNumber    VARCHAR(50)      NOT NULL
    , MobilePhone       VARCHAR(250)     NOT NULL
	, CardMask          VARCHAR(20)          NULL
	, CardExpiresOn     DATE                 NULL
	, TagText           VARCHAR(250)     NOT NULL
	, SNILS             VARCHAR(50)          NULL
	, PaymentDate       DATETIME             NULL
)
GO
ALTER TABLE mart.FraudulentCard ADD CONSTRAINT PK_mart_FraudulentCard PRIMARY KEY(ApplicationId, TagText);
GO
CREATE NONCLUSTERED INDEX IX_mart_FraudulentCard ON mart.FraudulentCard(Account_RK, TagText);
GO
CREATE TRIGGER mart.tr_FraudulentCard_u
ON mart.FraudulentCard
AFTER UPDATE
AS BEGIN
	UPDATE g SET
	    UpdateDate = GETDATE()
	FROM inserted i
	INNER JOIN mart.FraudulentCard g ON g.ApplicationId = i.ApplicationId;
END;