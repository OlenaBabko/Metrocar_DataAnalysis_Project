--Downloads by platform 
 
select
    platform,
    count(*) as downloads
from app_downloads
group by platform
order by downloads desc;