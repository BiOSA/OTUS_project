CREATE TABLE tz.Contact
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL
    
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
    , DocumentSeries                            NVARCHAR(100)        NULL

    , Customer_RK                               BIGINT               NULL
    , Gender_RK                                 BIGINT               NULL
    , Busyness_RK                               BIGINT               NULL
    , MaritalStatus_RK                          BIGINT               NULL
    , Education_RK                              BIGINT               NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_Contact_BatchId ON tz.Contact(BatchId, ContactId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Contact TO tz_report;