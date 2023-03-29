use airport1 

select distinct((select p.PName from Person_v p where p.SSN = t1.PersonID)union
	   (select c.CName from Corp_v c where c.CName = t2.CorpotateName)) as 'Name',
	   ((select p.Phone_Num from Person_v p where p.SSN = t1.PersonID)union
	   (select c.Phone_Num from Corp_v c where c.CName = t2.CorpotateName)) as 'Phone'
from 
	(
		select o.PersonID
		from owner o
		where o.PersonID is not null and datediff(month,o.Pdate,convert(date, '02-7-2011')) between 0 and 1 
	) as t1,
	(
		select o.CorpotateName
		from owner o
		where o.PersonID is not null and datediff(month,o.Pdate,convert(date, '02-7-2011')) between 0 and 1 
	) as t2

	select*
	from owner 
