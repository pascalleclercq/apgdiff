
ALTER TABLE testtable
	ADD COLUMN IF NOT EXISTS col3 boolean,
	ADD COLUMN IF NOT EXISTS col4 character(10),
	ADD COLUMN IF NOT EXISTS col5 text,
	ALTER COLUMN col1 SET NOT NULL;
UPDATE  testtable SET col1=0 WHERE col1 is null;
ALTER TABLE testtable ALTER COLUMN col1 SET DEFAULT  0;
UPDATE  testtable SET col3=false WHERE col3 is null;
ALTER  TABLE testtable ALTER  COLUMN col3 SET DEFAULT false;
ALTER  TABLE testtable ALTER  COLUMN col3 SET NOT NULL;
UPDATE  testtable SET col4='' WHERE col4 is null;
ALTER  TABLE testtable ALTER  COLUMN col4 SET DEFAULT '';
ALTER  TABLE testtable ALTER  COLUMN col4 SET NOT NULL;
UPDATE  testtable SET col5='' WHERE col5 is null;
ALTER  TABLE testtable ALTER  COLUMN col5 SET DEFAULT '';
ALTER  TABLE testtable ALTER  COLUMN col5 SET NOT NULL;

ALTER TABLE testtable
	ALTER COLUMN col3 DROP DEFAULT,
	ALTER COLUMN col4 DROP DEFAULT,
	ALTER COLUMN col5 DROP DEFAULT,
	ALTER COLUMN col1 DROP DEFAULT;