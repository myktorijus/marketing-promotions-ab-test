SELECT
 promotion,
 location_id,
 AVG(sales_in_thousands) AS avg_sales
FROM
 `turing_data_analytics.wa_marketing_campaign`
GROUP BY
 promotion,
 location_id
ORDER BY
 promotion