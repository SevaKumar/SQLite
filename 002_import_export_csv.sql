#!/usr/bin/sqlite3

-- Importing a CSV file
-- Source: https://data.cms.gov/provider-data/sites/default/files/resources/092256becd267d9eeccf73bf7d16c46b_1641873938/Hospital_General_Information.csv

-- 1) Download the data.
-- $ curl -o hospital_info.csv https://data.cms.gov/provider-data/sites/default/files/resources/092256becd267d9eeccf73bf7d16c46b_1641873938/Hospital_General_Information.csv

-- If the table exists, remove it.
    drop table hospital_info;

-- SQLite set the mode to CSV.
.mode csv

-- Import the CSV file.
.import 'hospital_info.csv' hospital_info

-- Display the file's schema.
.schema hospital_info

-- Count the number of records based on the facility id. Column names that contain spaces must be surrounded by double quotes.
.print (PGM_CMT)---Total Record Count:
    select count(distinct "Facility ID") as cnt from hospital_info;

-- display a list of hospital identifiers in Washington State
.print (PGM_CMT)---List of facility ids:
    select distinct "Facility ID" from hospital_info where "State" = "WA";

-- Choose one at random and show a single hospital record.
.print (PGM_CMT)---Single record:
    select * from hospital_info where "Facility ID" = "500008";

-- Number of hospitals by state.
.print (PGM_CMT)---Number of hospitals by state:
    select "State", count(distinct "Facility ID") as hosp_cnt 
    from hospital_info 
    group by 1 
    order by 2 desc;


-- Export a CSV file.
.print (PGM_CMT)---Export result to a CSV: see file hosp_cnt_state.csv
.headers on
.mode csv
.output hosp_cnt_state.csv
    select "State", count(distinct "Facility ID") as hosp_cnt 
    from hospital_info 
    group by 1 
    order by 2 desc;
.quit