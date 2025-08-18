CREATE TABLE stg.t_tz_bpm_application_decision ( id uuid NULL, created_on timestamp NULL, created_by_id uuid NULL, modified_on timestamp NULL, modified_by_id uuid NULL, notes text NULL, process_listeners int4 NULL, "name" text NULL, description text NULL, etl_execution_date timestamp NULL, etl_start_date timestamp NULL)
DISTRIBUTED REPLICATED;
