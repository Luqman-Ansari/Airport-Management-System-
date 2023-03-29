use airport1 

select (select p.mname from planet p where p.Modelnum = a.PlaneType) as names, avg(s.STime) as Average_Time 
from Services s
inner join airplane a on a.Reg = s.A_RegNo
group by a.PlaneType, s.A_RegNo, s.STime


select* 
from planet 


select*
from airplane a
inner join services s on s.A_RegNo = a.Reg

