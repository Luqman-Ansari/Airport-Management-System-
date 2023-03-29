use airport1 


select (select p.PName from person_v p where p.SSN = t1.EmpSSN ) as Name,t1.STime as 'Hours Worked'
from(
	select m.EmpSSN, s.STime, s.A_RegNo
	from mantain m
	inner join Services s on s.A_RegNo = m.A_RegNo and s.SDate = m.SDate
	) as t1

inner join(
			select o.AirplaneID
			from owner o
			where o.CorpotateName = 'Iqbalair'  -- <<<< Particular Organization
			) as t2 on t1.A_RegNo = t2.AirplaneID
order by t1.STime desc