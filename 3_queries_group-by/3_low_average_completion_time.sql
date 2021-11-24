SELECT students.name as student, avg(assignment_submissions.duration) as avg_duration, avg(assignments.duration) as estimated_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg_duration ASC;