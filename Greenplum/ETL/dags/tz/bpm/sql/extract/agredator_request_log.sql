SELECT 
*,
'{{ logical_date }}' AS etl_execution_date,
'{{ ti.start_date }}' as etl_start_date
FROM ext."t_tz_bpm_agredator_request_log"
WHERE "RequestDate" >= CAST('{{ macros.ds_add(ds, -1) }}' AS TIMESTAMP)
  AND "RequestDate" <  '{{ data_interval_start }}'