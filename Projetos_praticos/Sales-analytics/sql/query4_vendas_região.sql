SELECT 
  region,
  ROUND(SUM(sales_amount), 2) AS total_vendidos
FROM kaggleprojects154.retail_sales.sales
GROUP BY region
ORDER BY total_vendidos DESC;
