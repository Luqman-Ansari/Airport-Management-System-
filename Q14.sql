use airport1

select p.FirstName + ' ' + p.LastName as 'Name', p.Phone_Num
from buys_from b
inner join Corp c on c.CName = b.corpName
inner join person p on p.SSN = b.personID
inner join hangar h on h.Location_ = p.City
where c.City = p.City
