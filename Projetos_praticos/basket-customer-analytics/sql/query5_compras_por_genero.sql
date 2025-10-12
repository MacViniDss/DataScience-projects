SELECT 
  c.sex,
  ROUND(AVG(b.basket_count), 3) AS avg_items_por_compra,
  COUNT(DISTINCT b.customer_id) AS total_customers
FROM kaggleprojects154.basket_analytics.basket_details b
JOIN kaggleprojects154.basket_analytics.customers c ON b.customer_id = c.customer_id
GROUP BY c.sex;
