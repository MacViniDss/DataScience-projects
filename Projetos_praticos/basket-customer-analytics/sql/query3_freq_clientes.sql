SELECT 
  b.product_id,
  SUM(b.basket_count) AS total_items
  COUNT(DISTINCT b.basket_date) AS active_days
FROM kaggleprojects154.basket_analytics.basket_details b
GROUP BY b.product_id
ORDER BY total_items DESC
LIMIT 5;
