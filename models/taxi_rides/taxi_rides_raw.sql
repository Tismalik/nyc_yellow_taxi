-- Modify the following jinja function to change the materialization type
{{ config(materialized='view')}}

--with source_data as (
--    select * from read_parquet('yellow_tripdata_2023-01.parquet')
--)

--select * from source_data

--or try 
select * from 'yellow_tripdata_2023-01.parquet'
