SELECT 
  year_month,
  ROUND(SUM(sales_amount), 2) AS total_vendas,
  SUM(quantity_sold) AS total_items_vendidos
from kaggleprojects154.retail_sales.sales
GROUP BY year_month
ORDER BY year_month
