with cte as (
    select
        *
    from {{ ref('trip_fact') }}  as t
    left join {{ ref('daily_weather') }} as w
    on t.START_DATE = w.DAILY_WEATHER
)
select * from cte
where DAILY_WEATHER is not null