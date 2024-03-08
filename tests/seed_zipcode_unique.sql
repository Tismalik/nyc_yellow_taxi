--if this test returns true then if means our model is faulty so expect no 0 tip_amounts
select count(province_code) 
from {{ ref('model2') }}
group by province_code
having count(province_code) > 1