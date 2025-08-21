CREATE TABLE pbi.Payment
(
	  Id                                BIGINT            NOT NULL         IDENTITY(1, 1)
                                                                           CONSTRAINT PK_pbi_Payment PRIMARY KEY
	, BatchId                           BIGINT                 NULL
	, [ApplicationId]					UNIQUEIDENTIFIER 	   NULL
	, Account_RK                        BIGINT             NOT NULL
	, [ContactId]						UNIQUEIDENTIFIER 	   NULL
	, Customer_RK                       BIGINT             NOT NULL
	, [ProductTypeName]					VARCHAR(3) 			   NULL
	, [LoanAmt]							DECIMAL(18, 2) 		   NULL
	, [IssueDate]						DATETIME 			   NULL
	, [IssueDateDT]						DATE 				   NULL
	, [date_to_court]					DATETIME 			   NULL
	, [flg_payment_after_court]			INT 				   NULL
	, [date_delq_90]					DATE 				   NULL
	, [flg_payment_after_delq_90]		INT 				   NULL
	, [date_delq_1]						DATE 				   NULL
	, [flg_payment_after_delq_1]		INT 				   NULL
	, [PaymentDate]						DATE 				   NULL
	, [PaymentType]						NVARCHAR(500) 		   NULL
	, [Amount]							NUMERIC(18, 2) 		   NULL
	, [PaymentStatus]					NVARCHAR(500) 		   NULL
	, [DPD on payment_date]				INT 				   NULL
	, [DebtAmt_Principal]				INT 				   NULL
	, [DebtAmt_Other]					INT 				   NULL
);
GO
CREATE NONCLUSTERED INDEX IX_pbi_Payment_BatchId ON pbi.Payment (BatchId);
GO