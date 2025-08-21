CREATE TABLE tz.TinkoffIDResponseTrace
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_TinkoffIDResponseTrace PRIMARY KEY
    , BatchId                                   BIGINT           NOT NULL

    , Customer_RK                               BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
    , DataSourceName                            VARCHAR(50)          NULL
    , IsNew                                     BIT                  NULL

    , TinkoffIDResponseTraceId                  UNIQUEIDENTIFIER     NULL
    , MobilePhone                               NVARCHAR(500)        NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_TinkoffIDResponseTrace_BatchId ON tz.TinkoffIDResponseTrace(BatchId, EffectiveDateFrom) INCLUDE (TinkoffIDResponseTraceId);
GO
CREATE NONCLUSTERED INDEX IX_tz_TinkoffIDResponseTrace_KeyId ON tz.TinkoffIDResponseTrace (EffectiveDateFrom,EffectiveDateTill,TinkoffIDResponseTraceId) INCLUDE(MobilePhone,Customer_RK);
GO
GRANT DELETE, INSERT, UPDATE ON tz.[TinkoffIDResponseTrace] TO tz_report;