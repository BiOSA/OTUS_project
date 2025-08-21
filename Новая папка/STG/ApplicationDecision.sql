CREATE TABLE stg.ApplicationDecision
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ApplicationDecisionId                     UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
)