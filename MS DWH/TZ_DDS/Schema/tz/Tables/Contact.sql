CREATE TABLE tz.Contact
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_Contact PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , Customer_RK                               BIGINT               NULL
    , Gender_RK                                 BIGINT               NULL
    , Busyness_RK                               BIGINT               NULL
    , MaritalStatus_RK                          BIGINT               NULL
    , Education_RK                              BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
    , DataSourceName                            VARCHAR(50)          NULL
    , IsNew                                     BIT                  NULL

    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , CreatedOnDT                               DATE                 NULL
    , GenderId                                  UNIQUEIDENTIFIER     NULL
    , JobTitle                                  NVARCHAR(1000)       NULL
    , BirthDate                                 DATE                 NULL
    , Phone                                     NVARCHAR(500)        NULL
    , MobilePhone                               NVARCHAR(500)        NULL
    , HomePhone                                 NVARCHAR(500)        NULL
    , Email                                     NVARCHAR(500)        NULL
    , BirthPlace                                NVARCHAR(1000)       NULL
    , DepartmentCode                            NVARCHAR(100)        NULL
    , BusynessId                                UNIQUEIDENTIFIER     NULL
    , Company                                   NVARCHAR(1000)       NULL
    , TotalAvarageMonthlyIncome                 NUMERIC(18,2)        NULL
    , INN                                       NVARCHAR(100)        NULL
    , DocumentNumber                            NVARCHAR(100)        NULL
    , IssuedOn                                  DATE                 NULL
    , IssuedBy                                  NVARCHAR(500)        NULL
    , ExpiresOn                                 DATE                 NULL
    , MaritalStatusId                           UNIQUEIDENTIFIER     NULL
    , SocialStatusId                            UNIQUEIDENTIFIER     NULL
    , EducationId                               UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , FirstName                                 NVARCHAR(500)        NULL
    , SecondName                                NVARCHAR(500)        NULL
    , MiddleName                                NVARCHAR(500)        NULL
    , ContactSourceId                           UNIQUEIDENTIFIER     NULL
    , WorkAddress                               NVARCHAR(MAX)        NULL
    , SourceURL                                 NVARCHAR(MAX)        NULL
    , AdditionalContactPersonPhone              NVARCHAR(100)        NULL
    , SNILS                                     NVARCHAR(100)        NULL
    , FIO                                       NVARCHAR(1500)       NULL
    , DocumentSeries                            NVARCHAR(100)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_Contact_BatchId ON tz.Contact(BatchId, EffectiveDateFrom) INCLUDE (Customer_RK);
GO
--CREATE NONCLUSTERED INDEX IX_tz_Contact_BatchId_Name ON tz.Contact (EffectiveDateFrom,EffectiveDateTill,[Name]) INCLUDE (Customer_RK);
GO
--CREATE NONCLUSTERED INDEX IX_tz_Contact_BatchId_FIO ON tz.Contact (EffectiveDateFrom,EffectiveDateTill,FIO) INCLUDE (Customer_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_Contact_EffectiveDateTill ON tz.Contact (EffectiveDateTill);
GO
CREATE NONCLUSTERED INDEX IX_tz_Contact_Customer_RK ON tz.Contact (Customer_RK);
GO
GRANT DELETE, INSERT, UPDATE ON tz.Contact TO tz_report;