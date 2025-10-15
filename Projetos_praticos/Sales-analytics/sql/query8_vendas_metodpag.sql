SELECT 
  payment_method,
  ROUND(SUM(sales_amount), 2) AS total_vendido
FROM kaggleprojects154.retail_sales.sales
GROUP BY payment_method
ORDER BY total_vendido DESC;
