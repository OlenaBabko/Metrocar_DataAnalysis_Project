-- HourCancellations

SELECT
    EXTRACT(HOUR FROM request_ts) AS hour_of_day,
    COUNT(*) AS cancellations
FROM ride_requests
WHERE cancel_ts IS NOT NULL
GROUP BY hour_of_day
ORDER BY hour_of_day;