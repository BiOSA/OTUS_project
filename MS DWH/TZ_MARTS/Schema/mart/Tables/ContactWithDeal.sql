CREATE TABLE mart.ContactWithDeal
(
	  Id                BIGINT           NOT NULL IDENTITY(1, 1)
                                                  CONSTRAINT PK_mart_ContactWithDeal PRIMARY KEY
	, Customer_RK       BIGINT           NOT NULL
	, BatchId           BIGINT               NULL
	, DateKey           BIGINT           NOT NULL            --Дата обновления записи
    , DateAlternateKey  DATE             NOT NULL
    , EffectiveDateFrom DATETIME             NULL
    , EffectiveDateTill DATETIME             NULL

	, ContactId         UNIQUEIDENTIFIER     NULL
	, MobilePhone       VARCHAR(100)         NULL
	, BirthDate         DATE                 NULL
	, FirstName         VARCHAR(100)         NULL
    , SecondName        VARCHAR(100)         NULL
    , MiddleName        VARCHAR(100)         NULL
	, Email             VARCHAR(100)         NULL
	, GenderName        VARCHAR(50)          NULL
	, BirthPlace        VARCHAR(1000)        NULL
	, DocumentSeries    VARCHAR(50)          NULL
	, DocumentNumber    VARCHAR(50)          NULL
	, DepartmentCode    VARCHAR(50)          NULL
    , IssuedBy          VARCHAR(500)         NULL
	, IssuedOn          DATE                 NULL
	, SNILS             VARCHAR(50)          NULL
	, JobTitle          VARCHAR(500)         NULL
	, Company           VARCHAR(500)         NULL
	, AddressReg        VARCHAR(2000)        NULL
	, AddressFct        VARCHAR(2000)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_mart_ContactWithDeal_ContactId ON mart.ContactWithDeal(ContactId);
GO
CREATE NONCLUSTERED INDEX IX_mart_ContactWithDeal_Customer_RK ON mart.ContactWithDeal(Customer_RK);
GO
CREATE NONCLUSTERED INDEX IX_mart_ContactWithDeal_BatchId ON mart.ContactWithDeal (BatchId);