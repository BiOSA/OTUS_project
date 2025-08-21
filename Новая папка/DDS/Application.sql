CREATE TABLE dds.[Application]
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_Application PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , Account_RK                                BIGINT					NULL
    , Customer_RK                               BIGINT					NULL
    , Product_RK                                BIGINT					NULL
    , ApplicationStatus_RK                      BIGINT					NULL
    , ApplicationDecision_RK                    BIGINT					NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
    , DataSourceName                            VARCHAR(50)          NULL
    , IsNew                                     BIT                  NULL

    , ApplicationId                             UNIQUEIDENTIFIER		NULL
	, CreatedOn									DATETIME2(7)			NULL
	, CreatedOnDT								DATE					NULL
	, CreatedById								UNIQUEIDENTIFIER		NULL
	, ModifiedOn								DATETIME2(7)			NULL
	, ModifiedOnDT								DATE					NULL
	, ModifiedById								UNIQUEIDENTIFIER		NULL
	, Number									NVARCHAR(50)		NOT NULL
	, ContactId									UNIQUEIDENTIFIER		NULL
	, Email										NVARCHAR(50)		NOT NULL
	, ContactMobilePhone						NVARCHAR(250)		NOT NULL
	, SourceURL									NVARCHAR(MAX)		NOT NULL
	, AnswerURL									NVARCHAR(MAX)		NOT NULL
	, AnswerURL3								NVARCHAR(MAX)		NOT NULL
	, OfferSum									DECIMAL(18, 2)			NULL
	, Cookie									NVARCHAR(MAX)		NOT NULL
	, ProductId									UNIQUEIDENTIFIER		NULL
	, DecisionId								UNIQUEIDENTIFIER		NULL
	, ContactSourceId							UNIQUEIDENTIFIER		NULL
	, FillingDate								DATETIME2(7)			NULL
	, FillingDateDT								DATE 					NULL
	, ProceededOn								DATETIME2(7)			NULL
	, ProceededOnDT								DATE 					NULL
	, PaymentDate								DATETIME2(7)			NULL
	, PaymentDateDT								DATE 					NULL
)
