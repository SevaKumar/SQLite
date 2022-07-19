# SQLite snippet

This code is only for my own use. Please feel free to change it to fit your own needs. If you know a better way, please tell me. Many thanks!

Since there is a lot to say about each script, I made markdown files for each one.

## Install Sqlite

Please look at the 001_hello_world blog for instructions.

## 001_hello_world.sql

Please look at the 001_hello_world blog for instructions.

## 002_import_export_csv.sql

This script imports a csv file containing information about all hospitals in the United States. Summarize the data by tallying the number of hospitals in each state. Export the summary to a CSV file. 

```Bash
# This file was accessed on 7/5/2022.
$ curl -o hospital_info.csv https://data.cms.gov/provider-data/sites/default/files/resources/092256becd267d9eeccf73bf7d16c46b_1641873938/Hospital_General_Information.csv
```