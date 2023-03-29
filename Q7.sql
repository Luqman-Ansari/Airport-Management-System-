use airport1 

SELECT a.Reg, p.mname
FROM airplane a
JOIN Mantain m ON a.Reg = m.A_RegNo
JOIN Services s ON m.SDate = s.SDate AND m.A_RegNo = s.A_RegNo
JOIN PLANET p ON a.PlaneType = p.Modelnum
WHERE s.SDate >= DATEADD(day, -7, GETDATE()) AND s.SDate <= DATEADD(day, 0, GETDATE())