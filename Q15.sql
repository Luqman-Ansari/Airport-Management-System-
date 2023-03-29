use airport1 

select (select pr.PName from Person_v pr where pr.SSN = p.SSN) as 'Name'
from flies f
inner join PILOT p on p.Lic_num = f.Lic_num
inner join ( 
				select a.PlaneType, u.status_
				from under_mantainance u
				inner join airplane a on a.Reg = u.A_regno
				where status_ = 'yes' 
			) as temp on temp.PlaneType = f.PlaneType

----------------------------------------------------------------------




select *
from Person_v p 
where p.SSN

select a.PlaneType, u.status_
from under_mantainance u
inner join airplane a on a.Reg = u.A_regno
where status_ = 'yes'