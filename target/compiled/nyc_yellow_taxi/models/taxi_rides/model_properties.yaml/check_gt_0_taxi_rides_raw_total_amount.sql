
select * 
from "dbt"."main"."taxi_rides_raw"
where total_amount <= 0
