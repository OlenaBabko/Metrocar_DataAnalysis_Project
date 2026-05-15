--Ride completed by platform 

SELECT
	ad.platform,
    COUNT(DISTINCT rr.ride_id)  AS completed_rides
FROM ride_requests rr
JOIN signups s ON rr.user_id = s.user_id 
JOIN app_downloads ad ON s.session_id = ad.app_download_key 
WHERE rr.dropoff_ts IS NOT NULL
GROUP BY ad.platform
ORDER BY completed_rides DESC;