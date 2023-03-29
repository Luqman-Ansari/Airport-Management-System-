use airport1

select e.eshift, avg(e.sal) as Average_Salary
from employee e
group by e.eshift

