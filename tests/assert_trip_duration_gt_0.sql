select * 
from {{ ref('taxi_rides_raw') }}
-- Remember when setting up test reverse the logic to return only results that fail the test
where tpep_dropoff_datetime = tpep_pickup_datetime