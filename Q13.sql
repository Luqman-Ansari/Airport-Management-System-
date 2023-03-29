use airport1 

select (select p.PName from person_v p where p.SSN = o.PersonID) as Name
from working w
right join planet p on p.Modelnum = w.Plane
inner join airplane a on a.PlaneType = p.Modelnum
inner join owner o on o.AirplaneID = a.Reg
where w.EmployeeID is null and o.PersonID is not null

select* 
from working
