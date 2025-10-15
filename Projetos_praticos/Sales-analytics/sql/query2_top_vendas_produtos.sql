SELECT 
  product_id,
  SUM(quantity_sold) AS total_quantidade,
  ROUND(SUM(sales_amount), 2) AS total_vendido
FROM kaggleprojects154.retail_sales.sales
GROUP BY product_id
ORDER BY total_vendido DESC
LIMIT 10;
