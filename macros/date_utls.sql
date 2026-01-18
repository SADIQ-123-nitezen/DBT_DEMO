{% macro function1(x) %}

case when  date(to_timestamp({{x}})) < current_date then 'PAST' WHEN date(to_timestamp({{x}})) = current_date  then 'PRESENT' ELSE 'FUTURE' END

{% endmacro %}

{% macro function2(x) %}

date({{x}})

{% endmacro %}


{% macro get_day_type(x) %}
    case 
        WHEN dayname(to_timestamp({{x}})) in ('Sat', 'Sun') 
            then 'WEEKEND'
        ELSE
            'BUSINESSDAY'
        END
{% endmacro %}


{% macro get_season_of_year(x) %}
     CASE 
        WHEN month(to_timestamp({{x}})) IN (12,1,2) 
            Then 'WINTER'
        WHEN month(to_timestamp({{x}})) IN (3,4,5)
            Then 'SPRING'
        WHEN month(to_timestamp({{x}})) IN (6,7,8)
            Then 'SUMMER'
        ELSE
            'AUTUMN'
        END
{% endmacro %}
