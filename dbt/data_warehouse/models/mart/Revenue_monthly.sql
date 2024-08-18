{{ config(
    materialized="table",
    schema="mart"
)}}

SELECT
    date_part('year',payment_date) as year,
    date_part('month',payment_date) as month,
    sum(amount) as total_revenue
from {{ref('fact_payment')}}
GROUP BY year, month
order by year, month