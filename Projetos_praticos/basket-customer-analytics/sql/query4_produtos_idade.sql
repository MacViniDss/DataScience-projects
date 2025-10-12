SELECT 
  CASE 
    WHEN c.customer_age < 25 THEN '16–24'
    WHEN c.customer_age BETWEEN 25 AND 34 THEN '25–34'
    WHEN c.customer_age BETWEEN 35 AND 54 THEN '35–54'
    ELSE '55+'
  END AS age_group,
  SUM(b.basket_count) AS total_items
FROM kaggleprojects154.basket_analytics.basket_details b
JOIN kaggleprojects154.basket_analytics.customers c ON b.customer_id = c.customer_id
GROUP BY age_group
ORDER BY total_items DESC;
