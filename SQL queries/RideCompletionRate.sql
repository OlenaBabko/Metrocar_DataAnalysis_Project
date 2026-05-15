-- Ride Completion Rate
SELECT
    COUNT(CASE WHEN dropoff_ts IS NOT NULL THEN 1 END) * 1.0
    / COUNT(*) AS ride_completion_rate
FROM ride_requests;