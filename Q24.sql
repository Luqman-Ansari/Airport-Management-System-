use airport1

select f.Lic_num, PName, count(f.PlaneType) as No_of_Planes_to_fly
from ((flies f 
	inner join pilot p on p.Lic_num = f.Lic_num)
	inner join Person_v q on p.SSN = q.SSN)
group by f.Lic_num, q.PName
