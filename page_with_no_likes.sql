SELECT pages.page_id FROM pages 
LEFT JOIN page_likes
ON pages.page_id=page_likes.page_id 
WHERE pages.page_id NOT IN (SELECT page_id FROM page_likes)
ORDER BY pages.page_id ASC;