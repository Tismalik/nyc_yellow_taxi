
    
    

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


