
CREATE TABLE stg.t_tz_bpm_verification_list_result ( id uuid NULL, created_on timestamp NULL, created_by_id uuid NULL, modified_on timestamp NULL, modified_by_id uuid NULL, "name" text NULL, description text NULL, process_listeners int4 NULL, action_type_id uuid NULL, etl_execution_date timestamp NULL, etl_start_date timestamp NULL)
DISTRIBUTED BY (id);
