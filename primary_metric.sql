-- First we average sales per location across weeks
WITH
 weekly_avg AS (
  SELECT
   location_id,
   promotion,
   AVG(sales_in_thousands) AS avg_weekly_sales
  FROM
   `turing_data_analytics.wa_marketing_campaign`
  GROUP BY
   location_id,
   promotion
)
-- This ensures each location is counted equally in the metric
SELECT
 promotion,
 COUNT(location_id) AS n_locations,
 ROUND(AVG(avg_weekly_sales), 2) AS mean_weekly_sales,
 ROUND(STDDEV(avg_weekly_sales), 2) AS std_weekly_sales
FROM
 weekly_avg
GROUP BY
 promotion
ORDER BY
 promotion;