{{ config(
    materialized="table",
    schema="raw"
)}}

select * From {{source('public','address')}}