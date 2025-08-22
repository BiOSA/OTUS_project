SELECT 
*,
'{{ logical_date }}' AS etl_execution_date,
'{{ ti.start_date }}' as etl_start_date
FROM ext."t_tz_additional_product_refund_log"
WHERE "ModifiedOn" >= CAST('{{ macros.ds_add(ds, -1) }}' AS TIMESTAMP)
  AND "ModifiedOn" <  '{{ data_interval_start }}'
