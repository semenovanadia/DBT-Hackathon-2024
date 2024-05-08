select
    id AS customer_id, 
    {{recency_days('order_created', '2019-09-14')}} 
from
    {{ ref("pizza")}}
group by
    id

    