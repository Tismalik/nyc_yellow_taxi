select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        Payment_type as value_field,
        count(*) as n_records

    from "dev"."main"."model1"
    group by Payment_type

)

select *
from all_values
where value_field not in (
    '1'
)



      
    ) dbt_internal_test