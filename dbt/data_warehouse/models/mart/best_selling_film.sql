{{ config(
    materialized="table",
    schema="mart"
)}}

SELECT
    f.film_id,
    f.title,
    SUM(p.amount) AS total_sales
FROM {{ ref('dim_payment_film') }} p
JOIN {{ ref('dim_film') }} f ON p.film_id = f.film_id
GROUP BY f.film_id, f.title
ORDER BY total_sales DESC
LIMIT 1