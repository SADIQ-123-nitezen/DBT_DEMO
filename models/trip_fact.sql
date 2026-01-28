with trip as (
    select 
        BIKEID,
        date(STARTTIME) start_date,
        START_STATION_ID,
        END_STATION_ID,
        USERTYPE,
        TRIPDURATION,
        timestampdiff(second,to_timestamp(STARTTIME), to_timestamp(STOPTIME)) trip_duration_secounds
    from {{ ref('stg_bike') }}
)
select * from trip as j where j.TRIPDURATION = j.trip_duration_secounds