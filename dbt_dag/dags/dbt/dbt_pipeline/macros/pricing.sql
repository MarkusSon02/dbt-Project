{% macro discounted_amount(extended_price, discount_percentage, scale=2) %}
    (-1 * {{ extended_price }} * {{ discount_percentage }})::decimal(16, {{ scale }})
{% endmacro %}

{% macro final_price(extended_price, discount_percentage, scale=2) %}
    ({{ extended_price }} + {{ discounted_amount(extended_price, discount_percentage, scale) }})::decimal(16, {{ scale }})
{% endmacro %}