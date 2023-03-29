use airport1 

select (select p.mname from planet p where a.planetype = p.Modelnum) as Pname, count(a.planetype) as 'No. of Planes'
from airplane a
inner join planet p on a.PlaneType = p.modelnum
group by a.PlaneType