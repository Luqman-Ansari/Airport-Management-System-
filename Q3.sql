use airport1

SELECT a.Reg,planet.mname
FROM airplane a
LEFT JOIN Mantain um ON a.Reg = um.A_RegNo
inner join planet on a.PlaneType=planet.Modelnum
WHERE um.A_RegNo IS NULL;