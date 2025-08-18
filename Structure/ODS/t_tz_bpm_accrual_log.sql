CREATE TABLE ods.t_tz_bpm_accrual_log (
	id uuid NULL,
	created_on timestamp NULL,
	created_by_id uuid NULL,
	modified_on timestamp NULL,
	modified_by_id uuid NULL,
	process_listeners int4 NULL,
	start_date timestamp NULL,
	end_date timestamp NULL,
	applications text NULL,
	error_message text NULL,
	info text NULL,
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
          START ('2023-12-31 00:00:00'::timestamp without time zone) END ('2024-01-01 00:00:00'::timestamp without time zone) WITH (appendonly='true', orientation='column', compresstype=zstd, compresslevel='1') 
                    COLUMN id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN start_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN end_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN applications ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN error_message ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN info ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768), 
          START ('2024-01-01 00:00:00'::timestamp without time zone) END ('2024-01-02 00:00:00'::timestamp without time zone) WITH (appendonly='true', orientation='column', compresstype=zstd, compresslevel='1') 
                    COLUMN id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN start_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN end_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN applications ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN error_message ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN info ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768), 
          START ('2025-08-18 00:00:00'::timestamp without time zone) END ('2025-08-19 00:00:00'::timestamp without time zone) EVERY ('1 day'::interval) WITH (appendonly='true', orientation='column', compresstype=zlib, compresslevel='3') 
                    COLUMN id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN start_date ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN end_date ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN applications ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN error_message ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN info ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768)
          );