-- recency days (how many days ago was made the last purchase)
-- select
--     customer
--     , DATEDIFF(day, MAX(order_date), '2023-12-31') AS recency_days-- fake 'current_date' in this saas dataset '2023-12-31'
-- from
--     "HACKATHON"."TEAM_12"."SaaS"
-- group by
--     customer


select
    customer,
    
    DATEDIFF(day, MAX(order_date), TO_DATE('2023-12-31', 'YYYY-MM-DD')) AS recency_d 
 
from
    "HACKATHON"."TEAM_12"."SaaS"
group by
    customer