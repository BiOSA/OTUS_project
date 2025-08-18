CREATE EXTERNAL TABLE gpdb.ext.t_tz_bpm_contact_inn (
	Id uuid,
	CreatedOn timestamp,
	CreatedById uuid,
	ModifiedOn timestamp,
	ModifiedById uuid,
	ProcessListeners int4,
	ApplicationId uuid,
	ContactId uuid,
	FirstName text,
	LastName text,
	MiddleName text,
	BirthDate date,
	DocumentNumber text,
	DocumentIssuedOn date,
	Inn text
)
LOCATION (
	'pxf://dbo.ContactInn?PROFILE=jdbc&SERVER=sql_tz_bpmonlinetz'
) ON ALL
FORMAT 'CUSTOM' ( FORMATTER='pxfwritable_import' )
ENCODING 'UTF8';