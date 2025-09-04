SELECT
 promotion,
 location_id,
 COUNT(DISTINCT week) AS weeks_present
FROM
 `turing_data_analytics.wa_marketing_campaign`
GROUP BY
 promotion,
 location_id
HAVING
 COUNT(DISTINCT week) < 4;