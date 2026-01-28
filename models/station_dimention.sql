with bike as (
    select 
        distinct START_STATION_ID,
                 START_STATION_NAME,
                 START_STATION_LATITUDE,
                 START_STATION_LONGITUDE
    from {{ ref('stg_bike') }}
)
select * from bike