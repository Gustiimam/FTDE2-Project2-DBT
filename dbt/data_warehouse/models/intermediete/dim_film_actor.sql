{{ config(
    materialized="table",
    schema="intermediete"
)}}

select * From {{ref('film_actor')}}