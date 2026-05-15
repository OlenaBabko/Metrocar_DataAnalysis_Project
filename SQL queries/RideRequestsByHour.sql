
--Hour of day 
EXTRACT(HOUR FROM request_ts) AS hour_of_day;

--Day of week
--(0 = Sunday, 6 = Saturday)
EXTRACT(DOW FROM request_ts) AS day_of_week;

--Ride requests by hour
SELECT
    EXTRACT(HOUR FROM request_ts) AS hour_of_day,
    COUNT(*) AS ride_requests
FROM ride_requests
GROUP BY hour_of_day
ORDER BY hour_of_day;