# Subscription Analysis Project 📊
A project to help a business understand why users are canceling.

### ❓ The Problem
The company noticed high-paying users were leaving, and they didn't know how much money was being lost.

### 🛠️ What I Did
- Built a database schema in **MySQL**.
- Calculated **Monthly Recurring Revenue (MRR)**.
- Identified **Revenue Leakage** from canceled Premium plans.

### 💡 Key Insight
My analysis showed that **100% of canceled revenue** came from Premium users, indicating a problem with our high-tier service.

### 💻 Main Query
```sql
SELECT plan_type, SUM(price) AS lost_revenue
FROM subscriptions
WHERE status = 'canceled'
GROUP BY plan_type;

https://www.db-fiddle.com/f/e8mJXbfiiq7KyRzBaQiR4h/0
