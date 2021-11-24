SELECT students.name, avg(assignment_submissions.duration) as average_completion_time
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY average_completion_time DESC;
