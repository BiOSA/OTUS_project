CREATE TABLE sys.sources (
	id serial4 NOT NULL,
	"name" varchar(127) NOT NULL,
	short_name varchar(15) NOT NULL,
	description varchar(255) DEFAULT NULL::character varying NULL,
	confluence varchar(255) DEFAULT NULL::character varying NULL,
	"type" varchar(7) NOT NULL
)
WITH (
	appendonly=true,
	orientation=row
)
DISTRIBUTED BY (id);