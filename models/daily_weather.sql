with daily_weather as (
    select 
        date(time) daily_weather,
        weather,
        pressure,
        humidity,
        clouds
    from {{ source('demo', 'WEATHER_DATA_AFTER_STAGGING') }}
),
daily_weather_agg as (
    select 
        daily_weather,
        WEATHER,
        round(avg(pressure),2) avg_pressure,
        round(avg(humidity),2) avg_humidity,
        round(avg(clouds),2) avg_clouds
    from daily_weather 
    group by daily_weather, WEATHER
    qualify row_number() over (partition by daily_weather order by count(WEATHER) desc) = 1
)
select * from daily_weather_agg as g