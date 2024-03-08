select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

select * from "dev"."main"."model3"
where province_code != DOLocationID


      
    ) dbt_internal_test