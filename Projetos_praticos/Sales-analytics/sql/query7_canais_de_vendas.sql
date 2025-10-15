SELECT 
  sales_channel,
  ROUND(AVG(sales_amount), 2) AS media_por_vendas
FROM kaggleprojects154.retail_sales.sales
GROUP BY sales_channel
ORDER BY media_por_vendas DESC;
