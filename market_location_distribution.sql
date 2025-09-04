WITH
 distinct_values AS (
  SELECT DISTINCT
   location_id,
   promotion,
   market_size
  FROM
   `turing_data_analytics.wa_marketing_campaign`
)
SELECT
 promotion,
 market_size,
 COUNT(location_id) AS n_locations
FROM
 distinct_values
GROUP BY
 promotion,
 market_size
ORDER BY
 promotion,
 market_size;