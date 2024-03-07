
    
    

select
    zipcode as unique_field,
    count(*) as n_records

from "dev"."main"."zipcodes"
where zipcode is not null
group by zipcode
having count(*) > 1


