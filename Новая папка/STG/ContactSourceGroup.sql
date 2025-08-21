CREATE TABLE stg.ContactSourceGroup
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ContactSourceGroupId                     UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
)