{{ config(
    materialized="table",
    schema="mart"
)}}

SELECT
    a.actor_id,
    concat(a.first_name,'',a.last_name) as actor_name,
    COUNT(fa.film_id) AS num_roles
FROM {{ ref('film_actor') }} fa
JOIN {{ ref('dim_actor') }} a ON fa.actor_id = a.actor_id
GROUP BY a.actor_id, actor_name
ORDER BY num_roles DESC
LIMIT 1