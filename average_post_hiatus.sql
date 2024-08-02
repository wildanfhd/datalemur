-- Getting the user who post > 1 (on 2021) (To calculate the days between first and last post)
-- SELECT user_id as post_count FROM posts
-- WHERE post_date
-- BETWEEN '2021-01-01' AND '2021-12-30'
-- GROUP BY user_id 
-- HAVING COUNT(post_id) > 1

SELECT user_id, MAX(post_date)::DATE - MIN(post_date)::DATE as days_between
FROM posts
WHERE user_id IN (SELECT user_id as post_count FROM posts
WHERE post_date
BETWEEN '2021-01-01' AND '2021-12-30'
GROUP BY user_id 
HAVING COUNT(post_id) > 1)
GROUP BY user_id;
