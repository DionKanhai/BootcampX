SELECT assignments.day, COUNT(assignments.chapter) as total_assignments
FROM assignments
GROUP BY assignments.day
HAVING COUNT(assignments.chapter) >= 10
ORDER BY assignments.day;