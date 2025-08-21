CREATE TABLE stg.t_tz_bpm_accrual (
	id uuid NULL,
	created_on timestamp NULL,
	created_by_id uuid NULL,
	modified_on timestamp NULL,
	modified_by_id uuid NULL,
	process_listeners int4 NULL,
	application_id uuid NULL,
	accrual_date date NULL,
	principal_debt numeric NULL,
	interest_debt numeric NULL,
	penalty_debt numeric NULL,
	fine_debt numeric NULL,
	amount_accrued numeric NULL,
	type_id uuid NULL,
	status_id uuid NULL,
	no_pay bool NULL,
	payment_schedule_id uuid NULL,
	state_duty_debt numeric NULL,
	etl_execution_date timestamp NULL,
	etl_start_date timestamp NULL
)
DISTRIBUTED BY (application_id)
PARTITION BY RANGE(modified_on) 
          (
          START ('2025-06-27 00:00:00'::timestamp without time zone) END ('2025-07-27 00:00:00'::timestamp without time zone) EVERY ('1 mon'::interval)
          );