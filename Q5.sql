use airport1 

SELECT AVG(Sal) as avg_salary
FROM EMPLOYEE
WHERE eshift = 'night';
