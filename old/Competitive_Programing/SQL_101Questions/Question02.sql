select * from sys.schemas
select * from sys.tables
select * from sys.columns
select * from INFORMATION_SCHEMA.SCHEMATA
select * from INFORMATION_SCHEMA.TABLES
select * from INFORMATION_SCHEMA.COLUMNS
select * from INFORMATION_SCHEMA.VIEWS

-- a) try 1.

select * from INFORMATION_SCHEMA.SCHEMATA
select * from INFORMATION_SCHEMA.COLUMNS

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_SCHEMA='Purchasing';

select TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME from INFORMATION_SCHEMA.COLUMNS
	group by TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME;

select c.TABLE_SCHEMA, c.TABLE_NAME, c.COLUMN_NAME 
	from INFORMATION_SCHEMA.COLUMNS c join  INFORMATION_SCHEMA.SCHEMATA s
	on c.TABLE_SCHEMA = s.SCHEMA_NAME
	where s.SCHEMA_OWNER='dbo'
	order by TABLE_NAME;

-- a) try 2.

select * from sys.schemas
select * from sys.tables
select * from sys.columns

select s.name schema_name, t.name table_name, c.name column_name from sys.tables t 
	join sys.schemas s on t.schema_id = s.schema_id
	join sys.columns c on t.object_id = c.object_id
	where s.schema_id != 1
	order by schema_name

select count(distinct s.name) schema_name, count(distinct t.name) table_name, count(c.name) column_name from sys.tables t 
	join sys.schemas s on t.schema_id = s.schema_id
	join sys.columns c on t.object_id = c.object_id
	where s.schema_id != 1

-- try 3:

select TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME from INFORMATION_SCHEMA.COLUMNS
	where TABLE_NAME not in(select distinct TABLE_NAME from INFORMATION_SCHEMA.VIEWS)
	and TABLE_SCHEMA not in (select distinct SCHEMA_NAME from INFORMATION_SCHEMA.SCHEMATA where SCHEMA_NAME = SCHEMA_OWNER)
	group by TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME

select count(distinct TABLE_SCHEMA) schema_name, count(distinct TABLE_NAME) table_name, count(COLUMN_NAME) column_name from INFORMATION_SCHEMA.COLUMNS
	where TABLE_NAME not in(select distinct TABLE_NAME from INFORMATION_SCHEMA.VIEWS)
	and TABLE_SCHEMA not in (select distinct SCHEMA_NAME from INFORMATION_SCHEMA.SCHEMATA where SCHEMA_NAME = SCHEMA_OWNER)

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- response a (method 1):
select count(distinct s.name) schema_name, count(distinct t.name) table_name, count(c.name) column_name from sys.tables t 
	join sys.schemas s on t.schema_id = s.schema_id
	join sys.columns c on t.object_id = c.object_id
	where s.schema_id != 1

-- response b (method 1):
select s.name schema_name, t.name table_name, c.name column_name from sys.tables t 
	join sys.schemas s on t.schema_id = s.schema_id
	join sys.columns c on t.object_id = c.object_id
	where s.schema_id != 1
	order by schema_name, table_name

-- response a (method 2):
select count(distinct TABLE_SCHEMA) schema_name, count(distinct TABLE_NAME) table_name, count(COLUMN_NAME) column_name from INFORMATION_SCHEMA.COLUMNS
	where TABLE_NAME not in(select distinct TABLE_NAME from INFORMATION_SCHEMA.VIEWS)
	and TABLE_SCHEMA not in (select distinct SCHEMA_NAME from INFORMATION_SCHEMA.SCHEMATA where SCHEMA_NAME = SCHEMA_OWNER)

-- response b (method 2):
select TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME from INFORMATION_SCHEMA.COLUMNS
	where TABLE_NAME not in(select distinct TABLE_NAME from INFORMATION_SCHEMA.VIEWS)
	and TABLE_SCHEMA not in (select distinct SCHEMA_NAME from INFORMATION_SCHEMA.SCHEMATA where SCHEMA_NAME = SCHEMA_OWNER)
	order by TABLE_SCHEMA, TABLE_NAME

/*
	a. Write a SQL Statement that will show a count of schemas, tables, and columns (do not include views) in the AdventureWorks database.
	b. Write a similar statement as part a but list each schema, table, and column (do not include views). This table can be used later in the course.
*/