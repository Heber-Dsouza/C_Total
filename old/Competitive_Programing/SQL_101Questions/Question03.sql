select * from sys.tables where object_id='1922105888'
select * from sys.columns where object_id='14623095'
select * from sys.check_constraints

-- try 1:

select t.name TableName, c.name ColumnName, cs.name CheckConstraintName, cs.definition CheckConstraintDefinition from sys.tables t 
	join sys.columns c on t.object_id = c.object_id
	join sys.check_constraints cs on t.object_id = cs.parent_object_id
	order by TableName, ColumnName

select t.name TableName, c.name ColumnName, cs.name CheckConstraintName, cs.definition CheckConstraintDefinition from sys.check_constraints cs
	join sys.tables t on t.object_id = cs.parent_object_id
	join sys.columns c on cs.parent_column_id = c.object_id
	order by TableName, ColumnName

-- try 2:

select t.name TableName, cs.name CheckConstraintName, cs.definition CheckConstraintDefinition from sys.check_constraints cs
	join sys.tables t on t.object_id = cs.parent_object_id
	order by TableName

select t.name TableName, c.name ColumnName from sys.tables t
	join sys.columns c on t.object_id = c.object_id
	order by TableName

select cs.name from sys.check_constraints cs
	join sys.columns c on c.object_id = cs.parent_column_id

-- try 3:

select * from sys.check_constraints cs where parent_column_id=0

select cs.name, parent_object_id, parent_column_id from sys.check_constraints cs

select cs.name, cs.parent_object_id, parent_column_id from sys.check_constraints cs
	join sys.tables t on t.object_id = cs.parent_object_id

select cs.name, t.name, parent_column_id from sys.check_constraints cs
	join sys.tables t on t.object_id = cs.parent_object_id

select cs.name, t.name, parent_column_id from sys.check_constraints cs
	join sys.tables t on t.object_id = cs.parent_object_id
	join sys.columns c on c.column_id = cs.parent_column_id and c.object_id = t.object_id

select cs.name, t.name, c.name from sys.check_constraints cs
	join sys.tables t on t.object_id = cs.parent_object_id
	join sys.columns c on c.column_id = cs.parent_column_id and c.object_id = t.object_id

select cs.name, t.name, cs.parent_column_id from sys.check_constraints cs
	join sys.tables t on t.object_id = cs.parent_object_id
	full outer join sys.columns c on c.column_id = cs.parent_column_id and c.object_id = t.object_id
	where cs.parent_column_id = 0

select cs.name, t.name, c.name from sys.check_constraints cs
	join sys.tables t on t.object_id = cs.parent_object_id
	full outer join sys.columns c on c.column_id = cs.parent_column_id and c.object_id = t.object_id
	where cs.name is not null
	order by cs.name

select t.name TableName, c.name ColumnName, cs.name CheckConstraintName, cs.definition CheckConstraintDefinition from sys.check_constraints cs
	join sys.tables t on t.object_id = cs.parent_object_id
	full outer join sys.columns c on c.column_id = cs.parent_column_id and c.object_id = t.object_id
	where cs.name is not null
	order by cs.name

-- try 4:

select c.column_id from sys.tables t
	join sys.columns c on c.object_id = t.object_id
	where t.object_id = '606625204'

select * from sys.columns where column_id = '0'

-- try 5:

select * from tbl_CheckConstraint

update tbl_CheckConstraint
	set ConstraintLevel = NULL

update tbl_CheckConstraint
	set ConstraintLevel =
		case 
			when ColumnName is null then 'TABLE'
			else 'COLUMN'
		end

-- try 6 (searching a better join for response b):

select t.name TableName, c.name ColumnName, cs.name CheckConstraintName, cs.definition CheckConstraintDefinition from sys.check_constraints cs
	join sys.tables t on t.object_id = cs.parent_object_id
	full outer join sys.columns c on c.column_id = cs.parent_column_id and c.object_id = t.object_id
	where cs.name is not null
	order by t.name, c.name

select t.name TableName, c.name ColumnName, cs.name CheckConstraintName, cs.definition CheckConstraintDefinition from sys.check_constraints cs
	join sys.tables t on t.object_id = cs.parent_object_id
	left join sys.columns c on c.column_id = cs.parent_column_id and c.object_id = t.object_id -- or c.object_id = cs.object_id
	order by t.name, c.name

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- response a:
create database Edited_AdventureWorks
use Edited_AdventureWorks

-- response b:
select t.name TableName, c.name ColumnName, cs.name CheckConstraintName, cs.definition CheckConstraintDefinition 
	from AdventureWorks2019.sys.check_constraints cs
	join AdventureWorks2019.sys.tables t on t.object_id = cs.parent_object_id
	full outer join AdventureWorks2019.sys.columns c on c.column_id = cs.parent_column_id and c.object_id = t.object_id
where cs.name is not null
order by t.name, c.name

-- or
select t.name TableName, c.name ColumnName, cs.name CheckConstraintName, cs.definition CheckConstraintDefinition
	from AdventureWorks2019.sys.check_constraints cs
	join AdventureWorks2019.sys.tables t on t.object_id = cs.parent_object_id
	left join AdventureWorks2019.sys.columns c on c.column_id = cs.parent_column_id and c.object_id = t.object_id -- or c.object_id = cs.object_id
order by t.name, c.name

-- response c:
use Edited_AdventureWorks

if not exists (select * from sys.objects where name='tbl_CheckConstraint' and type='U')
create table tbl_CheckConstraint(
	TableName varchar(100),
	ColumnName varchar(100),
	CheckConsraint varchar(250),
	[Definition] varchar(500),
	ConstraintLevel varchar(100)
)

-- response d:

insert into Edited_AdventureWorks.dbo.tbl_CheckConstraint(TableName, ColumnName, CheckConsraint, [Definition])
select t.name, c.name, cs.name, cs.definition from AdventureWorks2019.sys.check_constraints cs
	join AdventureWorks2019.sys.tables t on t.object_id = cs.parent_object_id
	full outer join AdventureWorks2019.sys.columns c on c.column_id = cs.parent_column_id and c.object_id = t.object_id
	where cs.name is not null
	order by t.name, c.name

-- or
insert into Edited_AdventureWorks.dbo.tbl_CheckConstraint(TableName, ColumnName, CheckConsraint, [Definition])
select t.name, c.name, cs.name, cs.definition from AdventureWorks2019.sys.check_constraints cs
	join AdventureWorks2019.sys.tables t on t.object_id = cs.parent_object_id
	left join sys.columns c on c.column_id = cs.parent_column_id and c.object_id = t.object_id -- or c.object_id = cs.object_id
	order by t.name, c.name

-- or
insert into Edited_AdventureWorks.dbo.tbl_CheckConstraint(TableName, ColumnName, CheckConsraint, [Definition], ConstraintLevel)
select t.name, c.name, cs.name, cs.definition, null ConstraintLevel from AdventureWorks2019.sys.check_constraints cs
	join AdventureWorks2019.sys.tables t on t.object_id = cs.parent_object_id
	left join sys.columns c on c.column_id = cs.parent_column_id and c.object_id = t.object_id -- or c.object_id = cs.object_id
	order by t.name, c.name

-- response e:
update tbl_CheckConstraint
	set ConstraintLevel =
		case 
			when ColumnName is null then 'TABLE'
			else 'COLUMN'
		end

-- response f:
-- response g:
drop table tbl_CheckConstraint

/*
	We learned in question 1 that 89 check constraints exist in the AdventureWorks Database.
	In this question we are going to determine what the check constraints are doing while creating a new database and table.

	a. Create a new database called "Edited_AdventureWorks" (we are creating another database so we don't   overwrite or change the AdventureWorks database).
	Then write a USE statement to connect to the new database.

	b. Using the following tables - sys.check_constraints, sys.tables, and sys.columns to write a query that will give you TableName, ColumnName, CheckConstraintName,
	and CheckConstraintDefinition

	c. Create a table named "tbl_CheckConstraint" in the "Edited_AdventureWorks" database with the following  columns and data types:

			TableName varchar(100)

			ColumnName varchar(100)

			CheckConsraint varchar(250)

			Definition varchar(500)

			ConstraintLevel varchar(100)

	d. Using the query in part b insert the data into "tbl_CheckConstraint"

	e. Using a case statement write an update statement (update ConstraintLevel) that will specify whether the constraint is assigned to the column or the table.

	f. What does this mean?

	g. Once you're done interpreting the results drop the tbl_CheckConstraint table
*/