select
    id AS customer_id, 
    
    DATEDIFF(day, MAX(order_created), TO_DATE('2019-09-14', 'YYYY-MM-DD')) AS recency_d 
 
from
    "HACKATHON"."TEAM_12"."pizza"
group by
    id