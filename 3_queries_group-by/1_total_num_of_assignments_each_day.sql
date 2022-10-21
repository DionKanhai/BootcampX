SELECT assignments.day, COUNT(assignments.chapter) as total_assignments
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;
