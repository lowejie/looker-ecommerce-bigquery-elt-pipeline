-- Macro contains formula for total sales amount
{% macro total_sale_amount(item_amt, price, scale=2) %}
    ROUND({{ item_amt }} * {{ price }}, {{ scale }})
{% endmacro %}
