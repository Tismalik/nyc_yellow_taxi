{{ config(materialized='view') }}
select A.* , B.*
from {{ ref('model1') }} as A innerjoin {{ ref('model2') }} as B on  A.DOLocationID = B.province_code

