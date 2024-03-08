
  
  create view "dev"."main"."model1__dbt_tmp" as (
    /*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/



with source_data as (

    select *
    from read_parquet("yellow_tripdata_2023-01.parquet")

)

select * 
from source_data
where Payment_type = 1 and Tip_amount > 0
  );
