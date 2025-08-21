CREATE TABLE sys.entity_columns (
	id serial4 NOT NULL,
	entities_id int4 NOT NULL,
	description varchar(255) DEFAULT NULL::character varying NULL,
	name_src varchar(127) NOT NULL,
	name_trgt varchar(127) NOT NULL,
	data_type_src varchar(31) NOT NULL,
	data_type_trgt varchar(31) NOT NULL,
	data_size_src int2 NOT NULL,
	data_size_trgt int2 NULL,
	data_scale_src int2 NULL,
	data_scale_trgt int2 NULL,
	data_transform_src varchar(255) DEFAULT NULL::character varying NULL,
	data_transform_trgt varchar(255) DEFAULT NULL::character varying NULL,
	null_rule varchar(255) DEFAULT NULL::character varying NULL,
	empty_rule varchar(255) DEFAULT NULL::character varying NULL
)
WITH (
	appendonly=true,
	orientation=row
)
DISTRIBUTED BY (id);