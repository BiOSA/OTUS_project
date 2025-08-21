CREATE TABLE stg.t_tz_bpm_additional_agreement_status (
	id uuid NULL,
	created_on timestamp NULL,
	created_by_id uuid NULL,
	modified_on timestamp NULL,
	modified_by_id uuid NULL,
	"name" text NULL,
	description text NULL,
	process_listeners int4 NULL,
	is_final bool NULL,
	etl_execution_date timestamp NULL,
	etl_start_date timestamp NULL
)
DISTRIBUTED BY (id)
PARTITION BY RANGE(modified_on) 
          (
          START ('2013-12-12 00:00:00'::timestamp without time zone) END ('2013-12-13 00:00:00'::timestamp without time zone) WITH (appendonly='true'), 
          START ('2021-08-31 00:00:00'::timestamp without time zone) END ('2021-09-01 00:00:00'::timestamp without time zone) WITH (appendonly='true'), 
          START ('2025-07-27 00:00:00'::timestamp without time zone) END ('2025-07-28 00:00:00'::timestamp without time zone) EVERY ('1 day'::interval)
          );