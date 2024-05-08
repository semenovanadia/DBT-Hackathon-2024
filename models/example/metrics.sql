select
    customer,
    {{calculate_customer_profit('profit')}} 
from
    {{ ref("SaaS")}}
group by
    customer


