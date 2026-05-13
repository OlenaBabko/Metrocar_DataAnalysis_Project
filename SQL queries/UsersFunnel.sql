-- UsersFunnel

-- Downloads  
SELECT count(*) FROM app_downloads;
-- Signups  
SELECT count(distinct user_id) FROM signups;
-- Ride requests  
SELECT count(distinct user_id) FROM ride_requests
WHERE request_ts is not NULL;
-- Ride accepted  
SELECT count(distinct user_id) FROM ride_requests
WHERE accept_ts is not null;
-- Completed rides  
SELECT count(distinct user_id) FROM ride_requests
WHERE dropoff_ts is not null;
-- Review left  
SELECT count(distinct user_id) FROM reviews;