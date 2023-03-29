use airport1 

select hangar.Num,  hangar.Location_, hangar.Capacity, count(airplane.HangarNum) as Planes_Stored
from hangar 
join airplane on airplane.HangarNum = hangar.Num
group by hangar.Location_, hangar.Capacity, hangar.num

