CREATE TABLE tz.ApplicationAdditionalProduct
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

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
CREATE CLUSTERED INDEX IX_tz_ApplicationAdditionalProduct_BatchId ON tz.ApplicationAdditionalProduct(BatchId, ApplicationAdditionalProductId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAdditionalProduct_ApplicationId ON tz.ApplicationAdditionalProduct(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationAdditionalProduct TO tz_report;