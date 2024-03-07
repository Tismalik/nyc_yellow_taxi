
# Welcome to my dbt Data transformation project on DuckDB 


### link to data: https://1drv.ms/u/s!AkYq687jBBufgakcvXMbJVGH_X2l-w?e=tuauKB

Try running the following commands to launch default practice example:
- dbt run
- dbt test


### This project aim to showcase a few modelling usecases in DBT i've created myself:::
- Tasks & Objectives:
- Initialize a new dbt project and load in the 'yellow_tripdata_2023-01.parquet file'
- Create a model1 which is a subset of the loaded data which show all the users who have paid for fare with credit card and have given a tip >0.00
- Create a built in test & singular to fail run if given parameters are not met
- add and load  a seed (external file) for zip codes 
- set up some properties and built in test on the seed
- Write a datacheck python script to validate that seed has loaded correctly
- create a model2 off the seed that only selects 'newyork zipcodes' details and makes the 'province code' unique dropping duplicates ' tip: window fuction
- create a singular test for this seeded model2
- create a new 'model3' which is joins the first model1 data on 'DOLocationID' to the 'provincecode' on the seed model2 (setup a lineage graph and where else necessary)
- create a reusuable test for this model3
- Use dbt build to execute all the steps
- Genrate a doc for the project  
- Load the target data to a python notebook and a visual of areas where these credit card users have given a tip .


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
