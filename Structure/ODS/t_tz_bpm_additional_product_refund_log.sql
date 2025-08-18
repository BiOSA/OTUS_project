CREATE TABLE ods.t_tz_bpm_additional_product_refund_log (
	id uuid NULL,
	created_on timestamp NULL,
	created_by_id uuid NULL,
	modified_on timestamp NULL,
	modified_by_id uuid NULL,
	process_listeners int4 NULL,
	application_id uuid NULL,
	application_additional_product_id uuid NULL,
	type_id uuid NULL,
	operator_id uuid NULL,
	action_id uuid NULL,
	status int4 NULL,
	etl_execution_date timestamp NULL,
	etl_start_date timestamp NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zlib,
	compresslevel=3
)
DISTRIBUTED BY (id)
PARTITION BY RANGE(modified_on) 
          (
          START ('2025-08-18 00:00:00'::timestamp without time zone) END ('2025-08-19 00:00:00'::timestamp without time zone) EVERY ('1 day'::interval) WITH (appendonly='true', orientation='column', compresstype=zlib, compresslevel='3') 
                    COLUMN id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN application_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN application_additional_product_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN type_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN operator_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN action_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN status ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768)
          );