CREATE TABLE stg.ContactSource
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ContactSourceId                     UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
	, [SourceGroupId]			UNIQUEIDENTIFIER     NULL
)