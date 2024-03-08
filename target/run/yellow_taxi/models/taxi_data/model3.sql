
  
  create view "dev"."main"."model3__dbt_tmp" as (
    
select A.* , B.*
from "dev"."main"."model1" as A join "dev"."main"."model2" as B on  A.DOLocationID = B.province_code
  );
