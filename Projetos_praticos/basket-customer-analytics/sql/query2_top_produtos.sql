SELECT 
  product_id,
  SUM(basket_count) AS total_sold
FROM kaggleprojects154.basket_analytics.basket_details
GROUP BY product_id
ORDER BY total_sold DESC
LIMIT 5;
