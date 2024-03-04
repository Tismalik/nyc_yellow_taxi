select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
select * 
from "dbt"."main"."taxi_rides_raw"
where total_amount <= 0

      
    ) dbt_internal_test