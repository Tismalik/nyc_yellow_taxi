select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      --if this test returns true then if means our model is faulty so expect no 0 tip_amounts
select * from "dev"."main"."model1"
where Tip_amount = 0
      
    ) dbt_internal_test