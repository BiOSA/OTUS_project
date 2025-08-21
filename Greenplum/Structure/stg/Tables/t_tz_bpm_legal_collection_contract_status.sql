CREATE TABLE stg.t_tz_bpm_legal_collection_contract_status ( id uuid NULL, created_on timestamp NULL, created_by_id uuid NULL, modified_on timestamp NULL, modified_by_id uuid NULL, process_listeners int4 NULL, "name" text NULL, description text NULL, available_for_contract bool NULL, available_for_contract_to_court bool NULL, etl_execution_date timestamp NULL, etl_start_date timestamp NULL)
DISTRIBUTED BY (id);

