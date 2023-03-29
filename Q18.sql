use airport1

select *
from buys_from b,(
					select o.CorpotateName, a.PlaneType, o.Pdate
					from owner o
					inner join airplane a on a.Reg = o.AirplaneID
					where o.CorpotateName is not null
				 ) as t1
where b.corpName = t1.CorpotateName and (select aa.PlaneType from airplane aa where aa.Reg = b.AirplaneID) = t1.PlaneType
		and datediff(month, t1.Pdate, getdate()) between 0 and 1;


