-- KeyRevenueKPIs
-- total_revenue
-- avg_revenue_per_ride
-- avg_revenue_per_user

SELECT
	SUM(t.purchase_amount_usd) AS total_usd,
	SUM(t.purchase_amount_usd)/COUNT(t.ride_id) AS avg_rev_per_ride,
	SUM(t.purchase_amount_usd)/COUNT(DISTINCT rr.user_id) AS avg_rev_per_user_who_pay
FROM transactions t
JOIN ride_requests rr
	ON t.ride_id = rr.ride_id
WHERE charge_status = 'Approved';