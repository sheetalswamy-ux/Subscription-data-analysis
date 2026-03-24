SELECT 
    plan_type, 
    SUM(price) AS lost_revenue
FROM subscriptions
WHERE status = 'canceled'
GROUP BY plan_type;
