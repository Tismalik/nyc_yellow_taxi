select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      --if this test returns true then if means our model is faulty so expect no 0 tip_amounts
select count(province_code) 
from "dev"."main"."model2"
group by province_code
having count(province_code) > 1
      
    ) dbt_internal_test