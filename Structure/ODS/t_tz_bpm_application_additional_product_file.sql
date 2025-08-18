CREATE TABLE ods.t_tz_bpm_application_additional_product_file (
	id uuid NULL,
	created_on timestamp NULL,
	created_by_id uuid NULL,
	modified_on timestamp NULL,
	modified_by_id uuid NULL,
	process_listeners int4 NULL,
	application_id uuid NULL,
	application_additional_product_id uuid NULL,
	additional_product_document_id uuid NULL,
	"name" text NULL,
	notes text NULL,
	"[data]" bytea NULL,
	type_id uuid NULL,
	"version" int4 NULL,
	"[size]" int4 NULL,
	locked_by_id uuid NULL,
	locked_on timestamp NULL,
	"number" text NULL,
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
                    COLUMN additional_product_document_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN name ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN notes ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN "[data]" ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN type_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN version ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN "[size]" ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN locked_by_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN locked_on ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN number ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768)
          );