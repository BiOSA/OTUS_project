CREATE TABLE pbi.Deal
(
      Id                               BIGINT           NOT NULL           IDENTITY(1, 1)
                                                                           CONSTRAINT PK_pbi_Deal PRIMARY KEY
    , BatchId                          BIGINT               NULL
    , DateKey                          BIGINT           NOT NULL            --Дата обновления записи
    , DateAlternateKey                 DATE             NOT NULL
    , EffectiveDateFrom                DATETIME             NULL
    , EffectiveDateTill                DATETIME             NULL

    , ApplicationId                    UNIQUEIDENTIFIER NOT NULL
    , ACCOUNT_RK                       BIGINT           NOT NULL
    , ContactId                        UNIQUEIDENTIFIER NOT NULL
    , CUSTOMER_RK                      BIGINT           NOT NULL

    , HasBD                            INT                  NULL            --Флаг что у данного клиента были/есть хотя бы один займ в БД
    , LandingSource                    NVARCHAR(MAX)        NULL
    , MarketingSource                  NVARCHAR(MAX)        NULL
    , MarketingWeb                     NVARCHAR(MAX)        NULL
    , ClientType                       NVARCHAR(255)        NULL
    , ClientTypeDetail                 NVARCHAR(255)        NULL
    , ChannelIssue                     NVARCHAR(255)        NULL
    , NumLoans                         INT                  NULL
    , NumLoansPdl                      INT                  NULL
    , NumLoansIL                       INT                  NULL
    , IssueDatetime                    DATETIME             NULL
    , IssueDatetimeDT                  DATE                 NULL
    , IssueWeek                        DATE                 NULL
    , ApproveAmt                       MONEY                NULL
    , LoanAmt                          MONEY                NULL
    , VASAmt                           MONEY                NULL
    , Product                          VARCHAR(255)         NULL
    , ProductDetail                    VARCHAR(255)         NULL
    , IsRefinanced                     BIT                  NULL
    , InterestRate                     DECIMAL(10, 2)       NULL
    , TermContract                     INT                  NULL
    , TermFactClose                    INT                  NULL
    , TermFact                         INT                  NULL
    , ExcepectedPaymentContractDate    DATE                 NULL
    , ExcepectedPaymentDate            DATE                 NULL
    , DelqDays                         INT                  NULL
    , DelqDate1                        DATE                 NULL
    , DelqDate17                       DATE                 NULL
    , DelqDate20                       DATE                 NULL
    , DelqDate90                       DATE                 NULL
    , CollectionDate                   DATE                 NULL
    , LoanStatus                       VARCHAR(50)          NULL
    , CloseDate                        DATE                 NULL
    , SoldDate                         DATE                 NULL
    , CourtDate                        DATE                 NULL
    , DealCourtDecisionDate            DATE                 NULL
    , AnnulmentDate                    DATE                 NULL
    , WriteOffDate                     DATE                 NULL
    , IsClosedToRefinance              BIT                  NULL
    , RequestProduct                   VARCHAR(255)         NULL
    , RequestProductDetail             VARCHAR(255)         NULL
    , RequestTerm                      DECIMAL(18, 2)       NULL
    , RequestAmt                       MONEY                NULL
    , ProlongationAmt                  INT                  NULL
    , Prolongation1Start               DATE                 NULL
    , Prolongation1End                 DATE                 NULL
    , Prolongation2Start               DATE                 NULL
    , Prolongation2End                 DATE                 NULL
    , Prolongation3Start               DATE                 NULL
    , Prolongation3End                 DATE                 NULL
    , Prolongation4Start               DATE                 NULL
    , Prolongation4End                 DATE                 NULL
    , Prolongation5Start               DATE                 NULL
    , Prolongation5End                 DATE                 NULL
    , PrincipalPaid                    MONEY                NULL
    , InteresPaid                      MONEY                NULL
    , VASPaid                          MONEY                NULL
    , OtherPaid                        MONEY                NULL
    --служебные поля
    , FIO                              VARCHAR(150)         NULL
    , PassportSeries                   VARCHAR(100)         NULL
    , PassportNumber                   VARCHAR(100)         NULL
    , BirthDate                        DATE                 NULL
    , BatchIdSource                    BIGINT               NULL            -- Какой брался BatchId для этой выборки. Внимание! Может не совпадать с BatchId
    , CreatedDatetime                  DATETIME             NULL
    , FinancingInstrument_RK           BIGINT               NULL
    , IssuanceType_RK                  BIGINT               NULL
);
GO
CREATE NONCLUSTERED INDEX IX_pbi_Deal ON pbi.Deal (EffectiveDateTill,ACCOUNT_RK,Product,IssueDatetimeDT) INCLUDE (ClientType,IssueDatetime,LoanAmt,CloseDate,SoldDate);
GO
CREATE NONCLUSTERED INDEX IX_pbi_Deal_CUSTOMER_RK ON pbi.Deal (CUSTOMER_RK);
GO