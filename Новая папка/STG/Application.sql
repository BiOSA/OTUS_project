CREATE TABLE stg.[Application]
(
      BatchId                                   BIGINT				NOT NULL
    , EffectiveDate                             DATETIME			NOT NULL

    , ApplicationId                             UNIQUEIDENTIFIER		NULL
	, CreatedOn									DATETIME2(7)			NULL
	, CreatedById								UNIQUEIDENTIFIER		NULL
	, ModifiedOn								DATETIME2(7)			NULL
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
	, ProceededOn								DATETIME2(7)			NULL
	, PaymentDate								DATETIME2(7)			NULL

    , Account_RK                                BIGINT					NULL
    , Customer_RK                               BIGINT					NULL
    , Product_RK                                BIGINT					NULL
    , ApplicationStatus_RK                      BIGINT					NULL
    , ApplicationDecision_RK                    BIGINT					NULL
)
