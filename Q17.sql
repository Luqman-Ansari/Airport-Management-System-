use airport1 

select ( select p.mname from 
							(select a.PlaneType from airplane a where a.Reg = temp.A_RegNo) as Types 
							inner join planet p on p.Modelnum = types.PlaneType) as Plane_Names,
		temp.A_RegNo as Registration_Number
from
(
	(
		select m.A_RegNo
		from employee e
		inner join mantain m on m.EmpSSN = e.SSN
		where eshift = 'day'
	)
	Union
	(
		select o.AirplaneID
		from owner o
		where o.CorpotateName is NULL
	)
) as temp

