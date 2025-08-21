CREATE TABLE tz.ApplicationAdditionalProduct
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_ApplicationAdditionalProduct PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
	, ApplicationAdditionalProduct_RK           BIGINT               NULL
    , Account_RK                                BIGINT               NULL
    , PaySystemOrder_RK                         BIGINT               NULL
    , AdditionalProduct_RK                      BIGINT               NULL
    , AdditionalProductStatus_RK                BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

    , ApplicationAdditionalProductId            UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , PaySystemOrderId                          UNIQUEIDENTIFIER     NULL
    , AdditionalProductId                       UNIQUEIDENTIFIER     NULL
    , Amount                                    NUMERIC(18,2)        NULL
    , PayDate                                   DATETIME             NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , ReturnDate                                DATETIME             NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAdditionalProduct_BatchId ON tz.ApplicationAdditionalProduct(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAdditionalProduct_Key ON tz.ApplicationAdditionalProduct(BatchId, ApplicationAdditionalProduct_RK) INCLUDE (EffectiveDateTill);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAdditionalProduct_ApplicationId ON [tz].[ApplicationAdditionalProduct] (Account_RK,[EffectiveDateFrom],[EffectiveDateTill]) INCLUDE (AdditionalProduct_RK,[Amount],[PayDate]);
GO
GRANT DELETE, INSERT, UPDATE ON tz.ApplicationAdditionalProduct TO tz_report;