WITH
 distinct_values AS (
  SELECT DISTINCT
   location_id,
   promotion,
   age_of_store
  FROM
   `turing_data_analytics.wa_marketing_campaign`
)
SELECT
 promotion,
 ROUND(AVG(age_of_store), 2) AS avg_store_age,
 ROUND(STDDEV(age_of_store), 2) AS std_store_age
FROM
 distinct_values
GROUP BY
 promotion;