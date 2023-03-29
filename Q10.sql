use airport1


select TOP 1 hangar.Location_, hangar.Capacity, hangar.Capacity - count(airplane.HangarNum) as Remaining_Space
from hangar 
join airplane on airplane.HangarNum = hangar.Num
group by hangar.Location_, hangar.Capacity
order by Remaining_Space desc

select * from airplane 

select* from hangar
