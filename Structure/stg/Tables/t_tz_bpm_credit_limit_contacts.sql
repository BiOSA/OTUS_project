CREATE TABLE stg.t_tz_bpm_credit_limit_contacts ( id uuid NULL, created_on timestamp NULL, created_by_id uuid NULL, modified_on timestamp NULL, modified_by_id uuid NULL, process_listeners int4 NULL, contact_id uuid NULL, "number" text NULL, status_id uuid NULL, start_date timestamp NULL, end_date timestamp NULL, planned_end_date timestamp NULL, file_id uuid NULL, credit_limit_id uuid NULL, sum numeric NULL, etl_execution_date timestamp NULL, etl_start_date timestamp NULL)
DISTRIBUTED BY (id)
PARTITION BY RANGE(etl_execution_date) 
          (
          START ('2025-07-10 00:00:00'::timestamp without time zone) END ('2025-07-11 00:00:00'::timestamp without time zone) EVERY ('1 day'::interval)
          );
