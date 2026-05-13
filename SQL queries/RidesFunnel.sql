-- RidesFunnel

-- Ride requests 
SELECT count(distinct ride_id) FROM ride_requests
WHERE request_ts is not null;
-- Ride accepted 
SELECT count(distinct ride_id) FROM ride_requests
WHERE accept_ts is not null;
-- Completed rides 
SELECT count(distinct ride_id) FROM ride_requests
WHERE dropoff_ts is not null;
-- Payment 
SELECT count(purchase_amount_usd)
FROM transactions
WHERE charge_status = 'Approved';
-- Review left 
SELECT count(*) FROM reviews;
--
-- Cancelled rides 
SELECT count(distinct ride_id) FROM ride_requests
WHERE cancel_ts is not null;