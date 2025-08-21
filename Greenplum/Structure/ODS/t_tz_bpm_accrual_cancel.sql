CREATE TABLE ods.t_tz_bpm_accrual_cancel (
	id uuid NULL,
	created_on timestamp NULL,
	created_by_id uuid NULL,
	modified_on timestamp NULL,
	modified_by_id uuid NULL,
	process_listeners int4 NULL,
	application_id uuid NULL,
	accrual_date date NULL,
	principal_debt numeric NULL,
	interest_debt numeric NULL,
	penalty_debt numeric NULL,
	fine_debt numeric NULL,
	amount_accrued numeric NULL,
	type_id uuid NULL,
	status_id uuid NULL,
	no_pay bool NULL,
	payment_schedule_id uuid NULL,
	cancel_date timestamp NULL,
	state_duty_debt numeric NULL,
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
                    COLUMN application_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN accrual_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN principal_debt ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN interest_debt ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN penalty_debt ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN fine_debt ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN amount_accrued ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN type_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN status_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN no_pay ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN payment_schedule_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN cancel_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN state_duty_debt ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768), 
          START ('2024-01-01 00:00:00'::timestamp without time zone) END ('2024-01-02 00:00:00'::timestamp without time zone) WITH (appendonly='true', orientation='column', compresstype=zstd, compresslevel='1') 
                    COLUMN id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN application_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN accrual_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN principal_debt ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN interest_debt ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN penalty_debt ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN fine_debt ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN amount_accrued ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN type_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN status_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN no_pay ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN payment_schedule_id ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN cancel_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN state_duty_debt ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zstd, compresslevel=1, blocksize=32768), 
          START ('2025-08-18 00:00:00'::timestamp without time zone) END ('2025-08-19 00:00:00'::timestamp without time zone) EVERY ('1 day'::interval) WITH (appendonly='true', orientation='column', compresstype=zlib, compresslevel='3') 
                    COLUMN id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN created_on ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN created_by_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN modified_on ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN modified_by_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN process_listeners ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN application_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN accrual_date ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN principal_debt ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN interest_debt ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN penalty_debt ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN fine_debt ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN amount_accrued ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN type_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN status_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN no_pay ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN payment_schedule_id ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN cancel_date ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN state_duty_debt ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN etl_execution_date ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768) 
                    COLUMN etl_start_date ENCODING (compresstype=zlib, compresslevel=3, blocksize=32768)
          );