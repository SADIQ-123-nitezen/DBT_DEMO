-- {% macro get_payment_methods() %}
-- {{ return(["bank_transfer", "credit_card", "gift_card"]) }}
-- {% endmacro %}

{% macro get_payment_methods() %}
{% set payment_methods_query %}
select distinct
payment_method
from {{ ref('raw_payments') }}
order by 1
{% endset %}
{% set results = run_query(payment_methods_query) %}
{{ log(results, info=True) }}
{{ return([]) }}
{% endmacro %}