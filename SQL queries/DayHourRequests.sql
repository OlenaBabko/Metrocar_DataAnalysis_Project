-- 09_1_DayHourRequests

SELECT
    EXTRACT(DOW  FROM request_ts) AS day_of_week,   -- 0=Sun ... 6=Sat
    EXTRACT(HOUR FROM request_ts) AS hour_of_day,
    COUNT(*) AS ride_requests
FROM ride_requests
WHERE request_ts IS NOT NULL
GROUP BY 1, 2
ORDER BY 1, 2;
