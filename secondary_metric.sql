WITH total_sales AS (
  SELECT
   location_id,
   promotion,
   SUM(sales_in_thousands) AS total_4week_sales
  FROM
   `turing_data_analytics.wa_marketing_campaign`
  GROUP BY
   location_id,
   promotion
)
SELECT
 promotion,
 COUNT(location_id) AS n_locations,
 ROUND(AVG(total_4week_sales), 2) AS mean_total_sales, -- in thousands
 ROUND(STDDEV(total_4week_sales), 2) AS std_total_sales -- in thousands
FROM
 total_sales
GROUP BY
  promotion
ORDER BY
  promotion;