SELECT year_month, SUM(basket_count) AS total_items
FROM kaggleprojects154.basket_analytics.basket_details
GROUP BY year_month
ORDER BY year_month;
