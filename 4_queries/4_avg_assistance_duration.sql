SELECT avg(completed_at - started_at) as average_duration
FROM assistance_requests
ORDER BY average_duration;