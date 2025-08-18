CREATE TABLE sys.entities (
	id serial4 NOT NULL,
	sources_id int4 NULL,
	description varchar(255) DEFAULT NULL::character varying NULL,
	schema_src varchar(31) NOT NULL,
	name_src varchar(127) NOT NULL,
	name_trgt varchar(127) NOT NULL,
	"filter" varchar(255) DEFAULT NULL::character varying NULL,
	dag_name varchar(127) DEFAULT NULL::character varying NULL,
	load_type varchar(15) NOT NULL,
	inc_column varchar(127) DEFAULT NULL::character varying NULL,
	detect_rule varchar(127) DEFAULT NULL::character varying NULL,
	update_params varchar(127) DEFAULT NULL::character varying NULL,
	entity_type varchar(255) NULL,
	is_load_active bool NULL,
	load_rejection_reason varchar(255) NULL
)
WITH (
	appendonly=true,
	orientation=row
)
DISTRIBUTED BY (id);