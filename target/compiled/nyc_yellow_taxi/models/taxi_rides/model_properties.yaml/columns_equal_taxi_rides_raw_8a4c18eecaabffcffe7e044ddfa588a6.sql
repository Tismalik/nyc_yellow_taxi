
select *
from "dbt"."main"."taxi_rides_raw"
where tpep_pickup_datetime = tpep_dropoff_datetime
