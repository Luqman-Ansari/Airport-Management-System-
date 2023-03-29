use airport1 

select COALESCE(o.CorpotateName, ' ') + COALESCE((select p.PName from Person_v p where p.SSN = o.PersonID), ' ') as Owner , count(o.AirplaneID) as Planes_owned
from owner o
group by o.PersonID, o.CorpotateName