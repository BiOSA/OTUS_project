CREATE TABLE ods.t_tz_bpm_additional_agreement_status (
	id uuid NULL,
	created_on timestamp NULL,
	created_by_id uuid NULL,
	modified_on timestamp NULL,
	modified_by_id uuid NULL,
	"name" text NULL,
	description text NULL,
	process_listeners int4 NULL,
	is_final bool NULL,
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
          START ('2013-12-12 00:00:00'::timestamp without time zone) END ('2013-12-13 00:00:00'::timestamp without time zone) WITH (appendonly='true', orientation='column', compresstype=zstd, compresslevel='1') 
                    COLUMN id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN description ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN is_final ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768), 
          START ('2021-08-31 00:00:00'::timestamp without time zone) END ('2021-09-01 00:00:00'::timestamp without time zone) WITH (appendonly='true', orientation='column', compresstype=zstd, compresslevel='1') 
                    COLUMN id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN description ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN is_final ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768), 
          START ('2025-07-27 00:00:00'::timestamp without time zone) END ('2025-07-28 00:00:00'::timestamp without time zone) EVERY ('1 day'::interval) WITH (appendonly='true', orientation='column', compresstype=zlib, compresslevel='5') 
                    COLUMN id ENCODING (compresstype=zlib, compresslevel=5, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zlib, compresslevel=5, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zlib, compresslevel=5, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zlib, compresslevel=5, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zlib, compresslevel=5, blocksize=32768) 
                    COLUMN name ENCODING (compresstype=zlib, compresslevel=5, blocksize=32768) 
                    COLUMN description ENCODING (compresstype=zlib, compresslevel=5, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zlib, compresslevel=5, blocksize=32768) 
                    COLUMN is_final ENCODING (compresstype=zlib, compresslevel=5, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zlib, compresslevel=5, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zlib, compresslevel=5, blocksize=32768)
          );