SELECT cohorts.name as cohort_name, avg(completed_at - started_at) as average_assistance_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_duration DESC
LIMIT 1;