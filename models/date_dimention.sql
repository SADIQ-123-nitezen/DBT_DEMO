with cte as (
    select 
        starttime,
        to_timestamp(starttime)  time_stamp_starttime,
        date(to_timestamp(starttime)) date_starttime,
        hour(to_timestamp(starttime)) hour_starttime,
        {{get_day_type('starttime')}} day_type,
        {{get_season_of_year('starttime')}} season_of_year,
        monthname(to_timestamp(starttime)) monthname
    from {{ ref('stg_bike') }}
)
select * from cte