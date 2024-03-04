select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select * 
from "dbt"."main"."taxi_rides_raw"
-- Remember when setting up test reverse the logic to return only results that fail the test
where tpep_dropoff_datetime = tpep_pickup_datetime
      
    ) dbt_internal_test