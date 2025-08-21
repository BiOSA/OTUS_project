CREATE TABLE stg.t_tz_bpm_apk_history (
	id uuid NULL,
	created_on timestamp NULL,
	event_date_time timestamp NULL,
	actual_calculation_date_time timestamp NULL,
	application_id uuid NULL,
	apsk numeric NULL,
	i_rate float8 NULL,
	calculation_event_id uuid NULL,
	credit_limit_contract_id uuid NULL,
	operation_history_id uuid NULL,
	"comment" text NULL,
	etl_execution_date timestamp NULL,
	etl_start_date timestamp NULL
)
DISTRIBUTED BY (application_id)
PARTITION BY RANGE(etl_execution_date) 
          (
          START ('2025-07-01 00:00:00'::timestamp without time zone) END ('2025-07-02 00:00:00'::timestamp without time zone) EVERY ('1 day'::interval)
          );