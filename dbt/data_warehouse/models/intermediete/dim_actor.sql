{{ config(
    materialized="table",
    schema="intermediete"
)}}

select * From {{ref('actor')}}