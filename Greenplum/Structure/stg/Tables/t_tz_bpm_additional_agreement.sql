CREATE TABLE stg.t_tz_bpm_additional_agreement (
	id uuid NULL,
	created_on timestamp NULL,
	created_by_id uuid NULL,
	modified_on timestamp NULL,
	modified_by_id uuid NULL,
	process_listeners int4 NULL,
	type_id uuid NULL,
	start_date date NULL,
	end_date date NULL,
	status_id uuid NULL,
	owner_id uuid NULL,
	amount numeric NULL,
	document_id uuid NULL,
	"comment" text NULL,
	application_id uuid NULL,
	cashflow_id uuid NULL,
	"number" int4 NULL,
	"period" int4 NULL,
	previous_end_date date NULL,
	plan_interest_amount numeric NULL,
	offer_file_id uuid NULL,
	asp_code text NULL,
	financing_instrument_type_id uuid NULL,
	financing_instrument_id uuid NULL,
	pay_system_order_id uuid NULL,
	canceled_contact_id uuid NULL,
	canceled_date timestamp NULL,
	etl_execution_date timestamp NULL,
	etl_start_date timestamp NULL
)
DISTRIBUTED BY (application_id)
PARTITION BY RANGE(etl_execution_date) 
          (
          START ('2025-07-01 00:00:00'::timestamp without time zone) END ('2025-07-02 00:00:00'::timestamp without time zone) EVERY ('1 day'::interval)
          );