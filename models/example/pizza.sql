select c.*, -- Select all columns from PIZZA_CUSTOMERS
    o.id AS order_id,
    o.order_created
 from {{ source('PIZZA', 'PIZZA_CUSTOMERS') }} AS c
join {{ source('PIZZA', 'PIZZA_ORDERS') }} AS o ON c.id = o.CUSTOMER_ID
WHERE is_canceled = 0

