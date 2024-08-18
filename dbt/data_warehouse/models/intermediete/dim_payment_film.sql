{{ config(
    materialized="table",
    schema="intermediete"
)}}

WITH rental_inventory AS (
    SELECT
        r.rental_id,
        r.inventory_id,
        r.rental_date,
        i.film_id
    FROM {{ ref('dim_rental') }} r
    JOIN {{ ref('dim_inventory') }} i ON r.inventory_id = i.inventory_id
),
payment_rental_inventory AS (
    SELECT
        p.payment_id,
        p.amount,
        p.payment_date,
        ri.film_id
    FROM {{ ref('fact_payment') }} p
    JOIN rental_inventory ri ON p.rental_id = ri.rental_id
)

SELECT
    p.payment_id,
    p.amount,
    p.payment_date,
    f.film_id,
    f.title
FROM payment_rental_inventory p
JOIN {{ ref('dim_film') }} f ON p.film_id = f.film_id