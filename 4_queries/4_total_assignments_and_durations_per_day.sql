SELECT assignments.day, count(assignments.day) as assignments_per_day, sum(assignments.duration) as total_duration_per_day
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;