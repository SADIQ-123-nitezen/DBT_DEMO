with cte as (
select * from {{ source('demo', 'WEATHER_DATA_AFTER_STAGGING') }} limit 10) 
select * from cte
