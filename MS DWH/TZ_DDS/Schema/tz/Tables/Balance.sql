CREATE TABLE tz.Balance
(
      Id                            BIGINT                    NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_Balance PRIMARY KEY
    , BatchId                       BIGINT                    NOT NULL

    , Balance_RK                    BIGINT                        NULL
    , Cashflow_RK                   BIGINT                        NULL
    , PaymentSchedule_RK            BIGINT                        NULL
    , Customer_RK                   BIGINT                        NULL
    , OperationCategory_RK          BIGINT                        NULL
    , OperationType_RK              BIGINT                        NULL
    , Account_RK                    BIGINT                        NULL

    , EffectiveDateFrom             DATETIME                      NULL
    , EffectiveDateTill             DATETIME                      NULL
    , DataSourceName                VARCHAR(50)                   NULL
    , IsNew                         BIT                           NULL

    , BalanceId                     UNIQUEIDENTIFIER              NULL 
    , CreatedOn                     DATETIME                      NULL 
    , CreatedOnDT                   DATE                          NULL 
    , ContactId                     UNIQUEIDENTIFIER              NULL 
    , CashflowId                    UNIQUEIDENTIFIER              NULL 
    , PaymentScheduleId             UNIQUEIDENTIFIER              NULL 
    , Amount                        NUMERIC(18, 2)                NULL
    , CurrentBalance                NUMERIC(18, 2)                NULL 
    , OperationTypeId               UNIQUEIDENTIFIER              NULL 
    , OperationCategoryId           UNIQUEIDENTIFIER              NULL
    , ApplicationId                 UNIQUEIDENTIFIER              NULL
    , ActualDate                    DATETIME                      NULL 
    , ActualDateDT                  DATE                          NULL
    , Number                        INT                           NULL 
)
GO
CREATE NONCLUSTERED INDEX IX_tz_Balance_EffectiveDateTill_EffectiveDateTill ON tz.Balance (EffectiveDateTill,OperationCategory_RK) INCLUDE (Account_RK,Amount,ActualDateDT);
GO
CREATE NONCLUSTERED INDEX IX_tz_Balance_OperationTypeId_Key ON tz.Balance ([OperationType_RK],[Account_RK],[OperationCategory_RK],[EffectiveDateFrom],[EffectiveDateTill],[ActualDate]) INCLUDE ([Amount]);
GO
CREATE NONCLUSTERED INDEX IX_tz_Balance_EffectiveDateTill ON tz.Balance (EffectiveDateTill, OperationType_RK, OperationCategory_RK) INCLUDE (Account_RK,Amount,ActualDateDT) WITH (SORT_IN_TEMPDB = ON, ONLINE = ON, MAXDOP = 4, FILLFACTOR = 95);
GO
GRANT DELETE, INSERT, UPDATE ON tz.Balance TO tz_report;