# SQLite snippet

This code is solely for my personal use. Please feel free to adapt it to your specific requirements. Please share if you know a better way. Thank you!

## Install Sqlite

If you need to install sqlite, feel free to use any method you prefer. Installing sqlite can be found by searching the web. I used Homebrew.


```Bash
brew install sqlite   # https://formulae.brew.sh/formula/sqlite
```

## 001_hello_world.sql

This is a test program to see if sqlite3 has been installed.


```Bash
$ which sqlite3   #/usr/bin/sqlite3
$ sqlite3 test.db < 001_hello_world.sql
Hello, World! Current Sqlite Version: 3.37.0
```

## 002_import_export_csv.sql

This script imports a csv file containing information about all hospitals in the United States. Summarize the data by tallying the number of hospitals in each state. Export the summary to a CSV file. 

```Bash
# This file was accessed on 7/5/2022.
$  curl -o hospital_info.csv https://data.cms.gov/provider-data/sites/default/files/resources/092256becd267d9eeccf73bf7d16c46b_1641873938/Hospital_General_Information.csv
```