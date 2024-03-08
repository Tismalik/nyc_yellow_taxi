--if this test returns true then if means our model is faulty so expect no 0 tip_amounts
select * from {{ ref('model1') }}
where Tip_amount = 0