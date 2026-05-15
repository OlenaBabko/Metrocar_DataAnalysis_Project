-- waiting time & is_cancelled

SELECT
    ride_id,
    EXTRACT(EPOCH FROM (accept_ts - request_ts)) / 60 AS waiting_time_minutes,
    CASE
        WHEN cancel_ts IS NOT NULL THEN 1 ELSE 0
    END AS is_cancelled
FROM ride_requests
WHERE accept_ts IS NOT NULL
ORDER BY (accept_ts - request_ts) DESC;