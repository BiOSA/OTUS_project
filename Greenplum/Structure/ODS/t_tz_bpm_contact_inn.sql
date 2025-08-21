CREATE TABLE ods.t_tz_bpm_contact_inn (
	id uuid NULL,
	created_on timestamp NULL,
	created_by_id uuid NULL,
	modified_on timestamp NULL,
	modified_by_id uuid NULL,
	process_listeners int4 NULL,
	application_id uuid NULL,
	contact_id uuid NULL,
	first_name text NULL,
	last_name text NULL,
	middle_name text NULL,
	birth_date date NULL,
	document_number text NULL,
	document_issued_on date NULL,
	inn text NULL,
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
          START ('2025-08-12 00:00:00'::timestamp without time zone) END ('2025-08-13 00:00:00'::timestamp without time zone) WITH (appendonly='true', orientation='column', compresstype=zstd, compresslevel='1') 
                    COLUMN id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN application_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN contact_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN first_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN last_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN middle_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN birth_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN document_number ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN document_issued_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN inn ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768), 
          START ('2025-08-13 00:00:00'::timestamp without time zone) END ('2025-08-14 00:00:00'::timestamp without time zone) WITH (appendonly='true', orientation='column', compresstype=zstd, compresslevel='1') 
                    COLUMN id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN application_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN contact_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN first_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN last_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN middle_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN birth_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN document_number ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN document_issued_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN inn ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768), 
          START ('2025-08-14 00:00:00'::timestamp without time zone) END ('2025-08-15 00:00:00'::timestamp without time zone) EVERY ('1 day'::interval) WITH (appendonly='true', orientation='column', compresstype=zstd, compresslevel='1') 
                    COLUMN id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN application_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN contact_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN first_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN last_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN middle_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN birth_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN document_number ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN document_issued_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN inn ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768), 
          START ('2025-08-15 00:00:00'::timestamp without time zone) END ('2025-08-16 00:00:00'::timestamp without time zone) WITH (appendonly='true', orientation='column', compresstype=zstd, compresslevel='1') 
                    COLUMN id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN application_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN contact_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN first_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN last_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN middle_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN birth_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN document_number ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN document_issued_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN inn ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768), 
          START ('2025-08-16 00:00:00'::timestamp without time zone) END ('2025-08-17 00:00:00'::timestamp without time zone) WITH (appendonly='true', orientation='column', compresstype=zstd, compresslevel='1') 
                    COLUMN id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN application_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN contact_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN first_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN last_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN middle_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN birth_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN document_number ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN document_issued_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN inn ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768), 
          START ('2025-08-17 00:00:00'::timestamp without time zone) END ('2025-08-18 00:00:00'::timestamp without time zone) WITH (appendonly='true', orientation='column', compresstype=zstd, compresslevel='1') 
                    COLUMN id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN application_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN contact_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN first_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN last_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN middle_name ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN birth_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN document_number ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN document_issued_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN inn ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768)
          );