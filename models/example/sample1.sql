{{ config(materialized='table') }}

with source_data1 as (
    select 1, 'shannu1'
    union
    select 2, 'shannu2'
    union
    select 3, 'shannu3'
)
select * from source_data1
