SELECT id, enrollment_date,
AVG(gpa) OVER (ORDER BY enrollment_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS Avg3GPAs,
AVG(gpa) OVER (ORDER BY YEAR(enrollment_date) RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS AvgGPAYearOverYear
FROM Student
ORDER BY enrollment_date, id;
