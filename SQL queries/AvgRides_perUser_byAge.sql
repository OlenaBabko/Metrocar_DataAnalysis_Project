--Скільки поїздок у середньому робить один користувач певного віку
-- AvgRides_perUser_byAge

SELECT
    s.age_range,
    COUNT(rr.ride_id) * 1.0 / COUNT(DISTINCT s.user_id) AS avg_rides_per_user
FROM signups s
JOIN ride_requests rr
    ON s.user_id = rr.user_id
WHERE rr.dropoff_ts IS NOT NULL
GROUP BY s.age_range
ORDER BY avg_rides_per_user DESC;