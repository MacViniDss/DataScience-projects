SELECT 
  sales_rep,
  ROUND(SUM(sales_amount), 2) AS total_vendidos
FROM kaggleprojects154.retail_sales.sales
GROUP BY sales_rep
ORDER BY total_vendidos DESC;
