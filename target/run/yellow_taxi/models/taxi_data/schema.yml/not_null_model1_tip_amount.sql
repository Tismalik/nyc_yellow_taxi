select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select tip_amount
from "dev"."main"."model1"
where tip_amount is null



      
    ) dbt_internal_test