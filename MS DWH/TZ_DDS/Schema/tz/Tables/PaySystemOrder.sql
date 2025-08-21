CREATE TABLE tz.PaySystemOrder
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_PaySystemOrder PRIMARY KEY
    , BatchId                                   BIGINT           NOT NULL

    , PaySystemOrder_RK                         BIGINT               NULL
    , Account_RK                                BIGINT               NULL
    , Customer_RK                               BIGINT               NULL
    , CashflowSource_RK                         BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
    , DataSourceName                            VARCHAR(50)          NULL
    , IsNew                                     BIT                  NULL
    
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
CREATE NONCLUSTERED INDEX IX_tz_PaySystemOrder_BatchId ON tz.[PaySystemOrder](BatchId, PaySystemOrderId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.PaySystemOrder TO tz_report;