#Data check for seed
#!/usr/bin/env python3
import duckdb as db
import os.path

import os.path

try:
  con = db.connect('dev.duckdb', read_only=True)
  print(con.sql('select * from zipcodes limit 5'))
  if (con.execute('select count(*) as total_zipcodes from zipcodes').fetchall()[0][0] == 41483):
    print("Your data counts are correct!")
    with open('C:/Coding/dbt_project/yellow_taxi/successful_data_check', 'w') as f:
      f.write('41483')
  else:
    print("There appears to be an issue with your data counts.")
except db.CatalogException:
  if not os.path.isfile('C:/Coding/dbt_project/yellow_taxi/seeds/zipcodes.csv'):
    print("It looks like the zipcodes.csv file is\n not present in the seeds/ directory.\n\nPlease move the file and try again.\n")
  else:
    print("It looks like your data warehouse doesn't exist yet\n\n Please run the dbt seed command and try again.\n")