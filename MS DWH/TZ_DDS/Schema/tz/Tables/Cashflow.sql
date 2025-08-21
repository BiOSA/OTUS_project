CREATE TABLE [tz].[Cashflow]
(
	  Id                            BIGINT					NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_Cashflow PRIMARY KEY
	, BatchId                       BIGINT					NOT NULL
	, Cashflow_RK                   BIGINT					    NULL
	, Account_RK                    BIGINT                      NULL
	, Customer_RK                   BIGINT                      NULL
	, CashflowCategory_RK           BIGINT					    NULL
	, CashflowSource_RK             BIGINT					    NULL
	, CashflowStatus_RK             BIGINT					    NULL
	, CashflowType_RK               BIGINT					    NULL

    , EffectiveDateFrom             DATETIME				    NULL
    , EffectiveDateTill             DATETIME				    NULL
    , DataSourceName                VARCHAR(50)				    NULL
    , IsNew                         BIT						    NULL

	, [AccountId]					UNIQUEIDENTIFIER			NULL--?
	, [ActualDate]					DATETIME    				NULL
	, [ActualDateDT]				DATE						NULL
	, [Amount]						NUMERIC(18, 2)				NULL
	, [ApplicationId]				UNIQUEIDENTIFIER			NULL
	, [CampaignId]					UNIQUEIDENTIFIER			NULL
	, [CashflowId]					UNIQUEIDENTIFIER			NULL--?
	, [CashflowSourceId]			UNIQUEIDENTIFIER			NULL
	, [Cashless]					BIT							NULL
	, [CategoryId]					UNIQUEIDENTIFIER			NULL
	, [ContactId]					UNIQUEIDENTIFIER			NULL
	, [ContractId]					UNIQUEIDENTIFIER			NULL
	, [CreatedOn]					DATETIME    				NULL
	, [CreatedOnDT]					DATE						NULL
	, [CurrencyId]					UNIQUEIDENTIFIER			NULL
	, [CurrencyRate]				NUMERIC(18, 2)				NULL
	, [DateSendDC]					DATETIME    				NULL
	, [DateSendDCDT]				DATE						NULL
	, [DateSendIBD]					DATETIME    				NULL
	, [DateSendIBDDT]				DATE						NULL
	, [DocumentId]					UNIQUEIDENTIFIER			NULL--?
	, [EstimatedDate]				DATETIME    				NULL
	, [EstimatedDateDT]				DATE						NULL
	, [ExternalNumber]				NVARCHAR(100)				NULL
	, [IsAutoRepayment]				BIT							NULL
	, [IsSendDC]					BIT							NULL
	, [IsSendIBD]					BIT							NULL
	, [MarketingEventId]			UNIQUEIDENTIFIER			NULL
	, [Notes]						NVARCHAR(MAX)				NULL
	, [Number]						NVARCHAR(100)				NULL
	, [OperationId]					NVARCHAR(100)				NULL
	, [OwnerCashflowId]				UNIQUEIDENTIFIER			NULL
	, [OwnerId]						UNIQUEIDENTIFIER			NULL
	, [PaymentSystemAccountInfo]	NVARCHAR(500)				NULL
	, [PrimaryAmount]				NUMERIC(18, 2)				NULL
	, [SendTo1C]					BIT							NULL
	, [StatusId]					UNIQUEIDENTIFIER			NULL
	, [Subject]						NVARCHAR(500)				NULL
	, [TransactionID]				NVARCHAR(500)				NULL
	, [TransferTime]				DATETIME    				NULL
	, [TransferTimeDT]				DATE						NULL
	, [TypeId]						UNIQUEIDENTIFIER			NULL
	, [Vat]							NUMERIC(18, 2)				NULL
) 
GO
CREATE NONCLUSTERED INDEX IX_tz_Cashflow_EffectiveDateTill ON tz.Cashflow (EffectiveDateTill,CashflowStatus_RK,CashflowType_RK,CashflowCategory_RK) INCLUDE (Account_RK,ActualDateDT,ActualDate,Amount,CategoryId,PaymentSystemAccountInfo,Cashflow_RK);
--GO
--CREATE NONCLUSTERED INDEX IX_tz_Cashflow_BatchId_StatusId ON [tz].[Cashflow] ([CashflowStatus_RK],[CashflowType_RK],[CashflowCategory_RK]) INCLUDE ([Account_RK],[EffectiveDateFrom],[EffectiveDateTill],[ActualDate],[Amount],[PaymentSystemAccountInfo]);
GO
GRANT DELETE, INSERT, UPDATE ON tz.Cashflow TO tz_report;
