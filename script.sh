dbt debug

dbt init nyc_yellow_taxi

dbt run

dbt run -f

dbt test

dbt test --select assert_trip_duration_gt_0.sql

dbt test --select taxi_rides_raw.sql

dbt docs generate

dbt docs -h

dbt docs serve

dbt seed

dbt snapshot

dbt build