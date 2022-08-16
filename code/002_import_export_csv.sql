#!/usr/bin/sqlite3

-- --------------------------------------------------
-- Read blog. See README. 


--Sqlite Hello
.print \n---[PGM_CMT_001] Show the version of SQLite and the local date and time:
select
   'Hello! ' || 'Current Sqlite Version: ' || sqlite_version() || '; Current Local Date and Time: ' || datetime('now','localtime');


.print \n---[PGM_CMT_002] Import the CSV file:
drop table if exists hospital_info;
-- SQLite set the mode to CSV.
.mode csv 
-- Import the CSV file.
.import 'data/hospital_info.csv' hospital_info 
-- Display the file's schema.
.schema hospital_info 


-- -----
-- Count the number of records based on the facility id. 
-- Column names that contain spaces must be surrounded by double quotes.
.print \n---[PGM_CMT_003] Total Record Count:
select
    count(distinct "Facility ID") as cnt
from
    hospital_info;


-- -----
-- display a list of hospital identifiers in Washington State
.print \n---[PGM_CMT_004] List of facility ids in WA:
select
    distinct "Facility ID"
from
    hospital_info
where
    "State" = "WA";

-- -----


-- -----
-- Choose one at random and show a single hospital record.
.print \n---[PGM_CMT_005] Single random hospital record:
select
    *
from
    hospital_info
where
    "Facility ID" in (
        select
            "Facility ID"
        from
            hospital_info
        order by
            RANDOM()
        limit
            1
    );



.print \n---[PGM_CMT_006] Output of single records 500008:
select
    *
from
    hospital_info
where
    "Facility ID" = "500008";

-- -----


-- -----
-- Number of hospitals by state.
.print \n---[PGM_CMT_007] Number of hospitals by state:
select
    "State",
    count(distinct "Facility ID") as hosp_cnt
from
    hospital_info
group by
    1
order by
    2 desc;
-- -----


-- -----
-- Export a CSV file.
.print \n---[PGM_CMT_008] Export result to a CSV: see file output/hosp_cnt_state.csv
.headers on
.mode csv
.output output/hosp_cnt_state.csv

select
    "State",
    count(distinct "Facility ID") as hosp_cnt
from
    hospital_info
group by
    1
order by
    2 desc;

.quit 
-- --------------------------------------------------