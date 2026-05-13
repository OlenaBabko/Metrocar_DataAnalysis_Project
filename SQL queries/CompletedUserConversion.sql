-- Completed User Conversion 

WITH
downloads AS (
    SELECT DISTINCT ad.app_download_key
    FROM app_downloads ad
),
users_who_completed_ride AS (
    SELECT DISTINCT rr.user_id
    FROM ride_requests rr
    WHERE rr.dropoff_ts IS NOT NULL
),
users_who_downloaded AS (
    SELECT DISTINCT
        s.user_id,
        d.app_download_key
    FROM downloads d
    JOIN signups s
        ON d.app_download_key = s.session_id
)
SELECT
    COUNT(DISTINCT CASE WHEN uwcr.user_id IS NOT NULL THEN uwd.user_id END) * 1.0
    / COUNT(DISTINCT uwd.user_id ) AS completed_user_conversion
FROM users_who_downloaded uwd
LEFT JOIN users_who_completed_ride uwcr ON uwd.user_id = uwcr.user_id;
