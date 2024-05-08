select c.*, -- Select all columns from PIZZA_CUSTOMERS
    o.id AS order_id,
    o.order_created
 from HACKATHON.DATA_SAMPLE.PIZZA_CUSTOMERS AS c
join HACKATHON.DATA_SAMPLE.PIZZA_ORDERS AS o ON c.id = o.CUSTOMER_ID
WHERE is_canceled = 0