with bike as (
    select 
        distinct START_STATION_ID,
                 START_STATION_NAME,
                 START_STATION_LATITUDE,
                 START_STATION_LONGITUDE
    from {{ source('demo', 'BIKE_DATA_AFTER_STAGGING') }}
)
select * from bike