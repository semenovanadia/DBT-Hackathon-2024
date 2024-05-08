
  create or replace   view "HACKATHON"."TEAM_12"."metrics"
  
   as (
    select
    customer,
    
    sum(profit) as profit_sum
 
from
    "HACKATHON"."TEAM_12"."SaaS"
group by
    customer
  );

