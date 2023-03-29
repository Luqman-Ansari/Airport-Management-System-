use airport1 

select a.Reg, count(s.SDate) as 'No. of Services'
from airplane a
inner join Services s on a.Reg = s.A_RegNo
group by a.Reg, s.SDate