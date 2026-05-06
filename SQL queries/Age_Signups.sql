-- Signups by age_range 

SELECT
	age_range,
    count(*) as users
FROM signups
group by age_range
order by age_range desc;