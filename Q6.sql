use airport1 

select top 5 m.EmpSSN, sum(s.STime) as Total_hours_Worked
from services s
inner join mantain m on m.A_RegNo = s.A_RegNo and m.SDate = s.SDate
group by m.EmpSSN
order by Total_hours_Worked desc


select* 
from Mantain