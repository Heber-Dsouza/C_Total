select type, count(type) count from sys.objects 
	group by type
	order by count desc;

select type, count(*) count from sys.objects 
	group by type
	order by 2 desc;

select type, type_desc, count(type) count from sys.objects 
	group by type, type_desc
	order by count desc;

select * from sys.objects;

select type from sys.objects where type='SQ';

/*
	Write a SQL Statement that will give you a count of each object type in the AdventureWorks database. Order by count descending.
*/