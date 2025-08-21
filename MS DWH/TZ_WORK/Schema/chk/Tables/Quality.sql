CREATE TABLE chk.Quality
(
	  Id         INT         NOT NULL IDENTITY(1, 1) CONSTRAINT PK_chk_Quality PRIMARY KEY
	, ObjectName VARCHAR(50) NOT NULL
	, CheckDate  DATETIME    NOT NULL                CONSTRAINT DF_chk_Quality DEFAULT(GETDATE())
	, NotInDWH   BIGINT      NOT NULL
	, NotInSrc   BIGINT      NOT NULL
	, Result     XML             NULL
);
