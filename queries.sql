CREATE TABLE subscriptions (
    id INT,
    user_id INT,
    plan_type VARCHAR(20),
    price DECIMAL(5,2),
    status VARCHAR(20), -- 'active' or 'canceled'
    signup_date DATE
);

INSERT INTO subscriptions VALUES
(1, 101, 'Basic', 9.99, 'active', '2023-01-15'),
(2, 102, 'Premium', 19.99, 'canceled', '2023-02-10'),
(3, 103, 'Basic', 9.99, 'active', '2023-03-05'),
(4, 104, 'Premium', 19.99, 'active', '2023-01-20'),
(5, 105, 'Basic', 9.99, 'canceled', '2023-04-12');



SELECT 
    plan_type, 
    SUM(price) AS lost_revenue
FROM subscriptions
WHERE status = 'canceled'
GROUP BY plan_type;

-- Count how many people signed up each month
SELECT 
    DATE_FORMAT(signup_date, '%Y-%m') AS signup_month, 
    COUNT(*) AS total_signups
FROM subscriptions
GROUP BY signup_month
ORDER BY signup_month;
