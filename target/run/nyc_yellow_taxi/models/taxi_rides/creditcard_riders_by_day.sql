
  
  create view "dbt"."main"."creditcard_riders_by_day__dbt_tmp" as (
    -- Update SQL to use Jinja reference (includes task2)
select 
   date_part('day', tpep_pickup_datetime) as day,
   count(*) as total_riders
from "dbt"."main"."taxi_rides_raw"
where payment_type = 1
group by day
  );
