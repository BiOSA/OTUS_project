CREATE TABLE stg.t_tz_bpm_address_type (
	id uuid NULL,
	created_on timestamp NULL,
	created_by_id uuid NULL,
	modified_on timestamp NULL,
	modified_by_id uuid NULL,
	"name" text NULL,
	description text NULL,
	code text NULL,
	for_contact bool NULL,
	for_account bool NULL,
	process_listeners int4 NULL,
	okb_code text NULL,
	etl_execution_date timestamp NULL,
	etl_start_date timestamp NULL
)
DISTRIBUTED BY (id);