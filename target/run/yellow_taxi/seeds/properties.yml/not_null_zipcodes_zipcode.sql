select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select zipcode
from "dev"."main"."zipcodes"
where zipcode is null



      
    ) dbt_internal_test