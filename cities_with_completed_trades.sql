-- SELECT * FROM trades LEFT JOIN users
-- ON trades.user_id=users.user_id AND status='Completed';

-- 1. Check how many unique user on 'trades' table
-- SELECT DISTINCT(trades.user_id) FROM trades LEFT JOIN users 
-- ON trades.user_id=users.user_id;

-- 2. Check if all the unique user on 'trades' table is on 'users' table
-- SELECT DISTINCT(trades.user_id) as total_user FROM trades RIGHT JOIN users 
-- ON trades.user_id=users.user_id;

-- 3. Select 'user_id' that has 'Completed' status and count the total 'Completed' status with the city name
SELECT DISTINCT(users.city), COUNT(trades.status) as total_orders FROM users RIGHT JOIN trades 
ON users.user_id=trades.user_id AND trades.status='Completed'
GROUP BY users.city ORDER BY total_orders DESC LIMIT 3;