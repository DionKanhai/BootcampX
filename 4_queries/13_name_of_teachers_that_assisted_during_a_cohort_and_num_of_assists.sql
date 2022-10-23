SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.completed_at) as total_assistances
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;