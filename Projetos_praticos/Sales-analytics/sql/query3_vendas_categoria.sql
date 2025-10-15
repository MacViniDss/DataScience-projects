SELECT 
  product_category,
  ROUND(SUM(sales_amount), 2) AS total_vendidos
FROM kaggleprojects154.retail_sales.sales
GROUP BY product_category
ORDER BY total_vendidos DESC;
