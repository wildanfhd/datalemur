SELECT COUNT(DISTINCT(company_id)) as duplicate_companies FROM job_listings
WHERE company_id IN (SELECT DISTINCT(company_id) FROM job_listings GROUP BY company_id HAVING COUNT(title) > 1)