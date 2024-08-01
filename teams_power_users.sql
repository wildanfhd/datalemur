SELECT  sender_id, COUNT(DISTINCT(message_id)) AS count_messages FROM messages 
WHERE sent_date BETWEEN '08-01-2022' AND '08-30-2022'
GROUP BY sender_id ORDER BY count_messages DESC LIMIT 2;