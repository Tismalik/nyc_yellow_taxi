#!/usr/bin/env python3
import duckdb
con = duckdb.connect('dbt.duckdb', read_only=True)
print(con.sql('select * from taxi_rides_raw limit 10'))
print(con.sql('select count(*) as total_rides from taxi_rides_raw'))
if (con.execute('select count(*) as total_rides from taxi_rides_raw').fetchall()[0][0] == 300000):
  with open('/home/repl/workspace/successful_data_check', 'w') as f:
    f.write('300000')

#Data check for project 2
#!/usr/bin/env python3
import duckdb
con = duckdb.connect('dbt.duckdb', read_only=True)
print(con.sql('select * from total_creditcard_riders_by_day'))
if (con.execute('select * as total_rides from total_creditcard_riders_by_day').fetchall()[0][1] == 54743):
  with open('/home/repl/workspace/successful_data_check', 'w') as f:
    f.write('54743')
    

#Data check for sources
#!/usr/bin/env python3
import duckdb
con = duckdb.connect('dbt.duckdb', read_only=True)
print(con.sql('select * from taxi_rides_raw2'))
print(con.sql('select count(*) from taxi_rides_raw2'))
if (con.execute('select count(*) from taxi_rides_raw2').fetchall()[0][0] == 300000):
  with open('/home/repl/workspace/successful_data_check', 'w') as f:
    f.write('300000')


#Data check for seed
#!/usr/bin/env python3
import duckdb
import os.path

try:
  con = duckdb.connect('dbt.duckdb', read_only=True)
  print(con.sql('select * from nynj_zipcodes'))
  if (con.execute('select count(*) as total_zipcodes from nynj_zipcodes').fetchall()[0][0] == 2877):
    print("Your data counts are correct!")
    with open('/home/repl/workspace/successful_data_check', 'w') as f:
      f.write('2877')
  else:
    print("There appears to be an issue with your data counts.")
except duckdb.CatalogException:
  if not os.path.isfile('/home/repl/workspace/nyc_yellow_taxi/seeds/nynj_zipcodes.csv'):
    print("It looks like the nynj_zipcodes.csv file is\n not present in the seeds/ directory.\n\nPlease move the file and try again.\n")
  else:
    print("It looks like your data warehouse doesn't exist yet\n\n Please run the dbt seed command and try again.\n")
