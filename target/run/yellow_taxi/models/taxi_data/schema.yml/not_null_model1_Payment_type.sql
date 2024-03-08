select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select Payment_type
from "dev"."main"."model1"
where Payment_type is null



      
    ) dbt_internal_test