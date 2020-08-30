SELECT *
 FROM met
 LIMIT 5;

 SELECT COUNT(*)
 FROM met
 WHERE category LIKE '%celery%';

 SELECT *, MIN(date)
 FROM met;

 SELECT country
 FROM met
 GROUP BY country
 ORDER BY COUNT(country) DESC
 LIMIT 10;

 SELECT category
 FROM met
 GROUP BY category
 HAVING COUNT(category) > 100;

 SELECT medium, COUNT(medium)
 FROM met
 WHERE medium LIKE 'silver' OR medium LIKE 'gold'
 GROUP BY medium
 ORDER BY COUNT(medium) DESC;

 SELECT CASE
    WHEN medium LIKE '%gold%' THEN 'Gold'
    WHEN medium LIKE '%silver%' THEN 'Silver'
    ELSE NULL
    END AS 'bling',
    COUNT(medium)
 FROM met
 WHERE medium LIKE 'Gold' OR medium LIKE 'Silver'
 GROUP BY medium
 ORDER BY COUNT(medium) DESC;
