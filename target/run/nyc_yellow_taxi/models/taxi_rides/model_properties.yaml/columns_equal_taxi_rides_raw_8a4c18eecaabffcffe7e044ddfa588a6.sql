select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
select *
from "dbt"."main"."taxi_rides_raw"
where tpep_pickup_datetime = tpep_dropoff_datetime

      
    ) dbt_internal_test