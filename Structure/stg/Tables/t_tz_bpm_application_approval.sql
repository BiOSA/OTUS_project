
CREATE TABLE stg.t_tz_bpm_application_approval ( id uuid NULL, created_on timestamp NULL, created_by_id uuid NULL, modified_on timestamp NULL, modified_by_id uuid NULL, approval_id uuid NULL, status_id uuid NULL, set_id uuid NULL, approval_date timestamp NULL, process_listeners int4 NULL, author_id uuid NULL, purpose text NULL, delegated_from_id uuid NULL, result_comment text NULL, application_id uuid NULL, return_to_list_date timestamp NULL, full_identification bool NULL, priority_sandbox int4 NULL, verification_list_item_id uuid NULL, status_change_date timestamp NULL, additional_comment text NULL, etl_execution_date timestamp NULL, etl_start_date timestamp NULL)
DISTRIBUTED BY (application_id)
PARTITION BY RANGE(etl_execution_date) 
          (
          START ('2025-07-01 00:00:00'::timestamp without time zone) END ('2025-07-02 00:00:00'::timestamp without time zone) EVERY ('1 day'::interval)
          );
