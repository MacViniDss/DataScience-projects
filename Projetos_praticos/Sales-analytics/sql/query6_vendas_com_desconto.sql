SELECT 
  CASE 
    WHEN discount = 0 THEN 'Sem Desconto'
    WHEN discount BETWEEN 0.01 AND 0.10 THEN 'Desconto Baixo(1-10%)'
    WHEN discount BETWEEN 0.11 AND 0.25 THEN 'Desconto Razoável (11-25%)'
    ELSE 'Desconto alto (>25%)'
  END AS faixa_de_desconto,
  ROUND(SUM(sales_amount), 2) AS total_vendas
FROM kaggleprojects154.retail_sales.sales
GROUP BY faixa_de_desconto
ORDER BY total_vendas DESC;
