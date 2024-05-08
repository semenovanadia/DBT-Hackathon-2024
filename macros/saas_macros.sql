-- just testing how macros 
{% macro calculate_customer_profit(profit_column) %}
    sum({{profit_column}}) as profit_sum
{% endmacro %}

-- recency days (how many days ago was made the last purchase)
{% macro recency_days(order_date, last_date) %}
    DATEDIFF(day, MAX({{order_date}}), TO_DATE('{{ last_date }}', 'YYYY-MM-DD')) AS recency_d 
{% endmacro %}