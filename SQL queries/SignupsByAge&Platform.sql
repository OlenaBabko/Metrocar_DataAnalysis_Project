-- Signups by age_range and platform 

SELECT
    ad.platform,
	s.age_range,
   COUNT(DISTINCT s.user_id)  as users
FROM signups s
JOIN app_downloads ad ON s.session_id = ad.app_download_key 
group by ad.platform, s.age_range
ORDER BY ad.platform, s.age_range;