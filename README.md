
# Welcome to my dbt Data transformation project on DuckDB 


### link to data: https://1drv.ms/u/s!AkYq687jBBufgakcvXMbJVGH_X2l-w?e=tuauKB

Try running the following commands to launch default practice example:
- dbt run
- dbt test


### This project aims to showcase a few modelling use-cases in DBT I've created myself:::
- Tasks & Objectives:
- Initialize a new dbt project and load it in the 'yellow_tripdata_2023-01.parquet file'
- Create a model1 which is a subset of the loaded data that show all the users who have paid for fare with a credit card and have given a tip >0.00
- Create a built-in test & singular to fail run if given parameters are not met
- add and load  a seed (external file) for zip codes 
- set up some properties and built in test on the seed
- Write a data check python script to validate that seed has loaded correctly
- create a model2 off the seed that only selects 'newyork zipcodes' details and makes the 'province code' unique dropping duplicates ' tip: window function
- create a singular test for this seeded model2
- create a new 'model3' which joins the first model1 data on 'DOLocationID' to the 'provincecode' on the seed model2 (set a lineage graph and where else necessary)
- create a reusable test for this model3
- Use dbt build to execute all the steps
- Generate a doc for the project  
- Load the target data to a Python notebook and create a visual of areas where these credit card users have given a tip (most generous tipper location).

Results:
- Lineage Graph from Doc generate <img width="928" alt="Lineage Graph" src="https://github.com/Tismalik/nyc_yellow_taxi/assets/78315034/53fd57a5-7224-4f64-a898-fc477c79aa0e">
- Map results on folium <img width="933" alt="folium" src="https://github.com/Tismalik/nyc_yellow_taxi/assets/78315034/711e0ce3-1b48-4650-b6a1-27b18c31cac1">


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
