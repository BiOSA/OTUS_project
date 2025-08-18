CREATE TABLE stg.t_tz_bpm_application_additional_product ( id uuid NULL, created_on timestamp NULL, created_by_id uuid NULL, modified_on timestamp NULL, modified_by_id uuid NULL, process_listeners int4 NULL, application_id uuid NULL, additional_product_id uuid NULL, status_id uuid NULL, pay_date timestamp NULL, amount numeric NULL, start_date timestamp NULL, end_date timestamp NULL, cashflow_id uuid NULL, return_date timestamp NULL, send_date timestamp NULL, text text NULL, organization_registry_history_id uuid NULL, main_file_id uuid NULL, pay_system_order_id uuid NULL, asp_code text NULL, asp_code_hash text NULL, etl_execution_date timestamp NULL, etl_start_date timestamp NULL)
DISTRIBUTED BY (application_id)
PARTITION BY RANGE(etl_execution_date) 
          (
          START ('2025-07-01 00:00:00'::timestamp without time zone) END ('2025-07-02 00:00:00'::timestamp without time zone) EVERY ('1 day'::interval)
          );
