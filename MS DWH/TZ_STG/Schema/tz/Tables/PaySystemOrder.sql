CREATE TABLE tz.PaySystemOrder
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL
    
    , PaySystemOrderId                          UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , [Type]                                    INT                  NULL
    , IsPayed                                   BIT                  NULL
    , IsChecked                                 BIT                  NULL
    , CashflowSourceId                          UNIQUEIDENTIFIER     NULL
    , PayAmount                                 NUMERIC(18,2)        NULL
    , PaymentSystemAccountInfo                  NVARCHAR(500)        NULL
    , ActualPayDate                             DATETIME2            NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_PaySystemOrder_BatchId ON tz.PaySystemOrder(BatchId, PaySystemOrderId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.PaySystemOrder TO tz_report;