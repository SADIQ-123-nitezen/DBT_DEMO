{% macro get_payment_methods() %}
{{ return(["bank_transfer", "credit_card", "gift_card","UPI","Online Payments", "Installment Payments"]) }}
{% endmacro %}

