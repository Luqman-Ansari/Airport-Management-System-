use airport1 

SELECT c.CName, c.CAddress
FROM Corp_v c
INNER JOIN OWNER o ON o.CorpotateName = c.CName
INNER JOIN airplane a ON o.AirplaneID = a.Reg
INNER JOIN PLANET p ON a.PlaneType = p.Modelnum
WHERE p.Capacity > 200;