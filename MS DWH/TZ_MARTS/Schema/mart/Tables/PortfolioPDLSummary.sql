CREATE TABLE mart.PortfolioPDLSummary
(
	  PortfolioPDLSummaryId   BIGINT         NOT NULL IDENTITY(1, 1) CONSTRAINT PK_mart_PortfolioPDLSummary PRIMARY KEY
    , ProcessDate             DATE           NOT NULL               -- Дата
    , IsPDL                   BIT            NOT NULL               -- Тип продукта
    , ClientType              VARCHAR(9)         NULL               -- Тип клиента
    , DueDay                  BIGINT             NULL               -- День долга
    , ApplicationAmount       BIGINT             NULL               -- Количество займов
    , LoanSum                 BIGINT             NULL               -- Сумма всех займов
    , ProlongationPrincipal   BIGINT             NULL               -- (?)Сумма взятых займов, по которым прошла пролонгация
    , ProlongationAmount      DECIMAL(38, 2)     NULL               -- (?)Количество пролонгаций
    , ProlongationSum         DECIMAL(38, 2)     NULL               -- (?)Сумма оплат пролонгаций
    
    , AccumPercent            DECIMAL(38, 2)     NULL               -- Начисленные проценты всего
    , AccumPercentPaid        DECIMAL(38, 2)     NULL               -- Оплаченные проценты всего
    , AccumFine               DECIMAL(38, 2)     NULL               -- Начисленные штрафы всего
    
    , AccumPercentCurrentDate DECIMAL(38, 2)     NULL               -- Начисление процентов в рамках дня
    , AccumFineCurrentDate    DECIMAL(38, 2)     NULL               -- Начисление штрафов в рамках дня

    , PaidPrincipal           DECIMAL(38, 2)     NULL               -- Оплаченный основной долг
    , PaidPercent             DECIMAL(38, 2)     NULL               -- Оплаченные проценты
    , PaidFine                DECIMAL(38, 2)     NULL               -- Оплаченные штрафы
    , IsRate                  BIT                NULL               -- флаг p.RatePerDay < 0.68
)
GO
