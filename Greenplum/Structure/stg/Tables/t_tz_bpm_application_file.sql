CREATE TABLE stg.t_tz_bpm_application_file ( id uuid NULL, created_on timestamp NULL, created_by_id uuid NULL, modified_on timestamp NULL, modified_by_id uuid NULL, "name" text NULL, notes text NULL, locked_by_id uuid NULL, locked_on timestamp NULL, "data" bytea NULL, type_id uuid NULL, "version" int4 NULL, "size" int4 NULL, process_listeners int4 NULL, application_id uuid NULL, deleted_on timestamp NULL, download_date timestamp NULL, application_file_template_id uuid NULL, application_file_type_id uuid NULL, application_file_status_id uuid NULL, etl_execution_date timestamp NULL, etl_start_date timestamp NULL)
DISTRIBUTED BY (application_id)
PARTITION BY RANGE(etl_execution_date) 
          (
          START ('2025-07-01 00:00:00'::timestamp without time zone) END ('2025-07-02 00:00:00'::timestamp without time zone) EVERY ('1 day'::interval)
          );

