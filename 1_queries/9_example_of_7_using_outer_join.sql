-- EXAMPLE OF AN OUTER JOIN

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- there are 3 kinds of OUTER JOIN: LEFT, RIGHT, FULL

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;\

-- The first query will return all students because students is to the LEFT of the word JOIN.
-- The second query will return all of the cohorts because cohorts is to the RIGHT of the word JOIN.
-- The third query will return all rows from both tables, even when there is no match.