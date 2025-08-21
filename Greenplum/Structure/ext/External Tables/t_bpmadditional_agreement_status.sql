CREATE EXTERNAL TABLE gpdb.ext.t_bpmadditional_agreement_status (
	id uuid,
	createdOn timestamp,
	createdById uuid,
	modifiedOn timestamp,
	modifiedById uuid,
	name text,
	description text,
	processListeners int4,
	isFinal bool
)
LOCATION (
	'pxf://dbo.additionalAgreementStatus?PROFILE=jdbc&SERVER=sql_tz_bpmonlinetz'
) ON ALL
FORMAT 'CUSTOM' ( FORMATTER='pxfwritable_import' )
ENCODING 'UTF8';