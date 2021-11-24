SELECT cohorts.name as cohort, count(students.*) as total_students
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort
HAVING count(students.*) >= 18
ORDER BY total_students;