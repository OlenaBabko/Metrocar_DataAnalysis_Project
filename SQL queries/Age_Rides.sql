--Ride completed users by age_range

SELECT
	age_range,
	COUNT(DISTINCT s.user_id) AS users_who_completed_ride
FROM signups s
JOIN ride_requests rr
    ON s.user_id = rr.user_id
WHERE rr.dropoff_ts IS NOT NULL
GROUP BY s.age_range
ORDER BY s.age_range;