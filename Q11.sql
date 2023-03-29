use airport1 

select  o.CorpotateName, count(o.CorpotateName) as PlanesOwned
from owner o
inner join airplane a on a.reg = o.AirplaneID
group by o.CorpotateName
having o.CorpotateName is not null
order by PlanesOwned desc


select * 
from OWNER