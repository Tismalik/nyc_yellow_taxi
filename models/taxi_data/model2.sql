
-- Use the `ref` function to select from other models

select country_code, zipcode, place, state, state_code, province, province_code, latitude, longitude
from 
    (select *, ROW_NUMBER() over(partition by province_code order by zipcode) as rn 
    from {{ ref('zipcodes') }}) as tb 
where state = 'New York' and rn = 1
