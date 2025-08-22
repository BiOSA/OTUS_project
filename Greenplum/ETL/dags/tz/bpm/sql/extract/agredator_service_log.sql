SELECT 
*,
'{{ logical_date }}' AS etl_execution_date,
'{{ ti.start_date }}' as etl_start_date
FROM ext."t_tz_bpm_agredator_service_log"
WHERE "CreatedOn" >= CAST('{{ macros.ds_add(ds, -1) }}' AS TIMESTAMP)
  AND "CreatedOn" <  '{{ data_interval_start }}'