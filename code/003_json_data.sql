#!/usr/local/opt/sqlite/bin/sqlite3

-- --------------------------------------------------
-- Read blog. See README. 
-- References
-- [1]: [Alex Garcia](https://observablehq.com/@asg017/scrape-json-html-zip-with-sqlite)
-- [2]: [Simon Willison’s TILs](https://til.simonwillison.net/sqlite/trying-macos-extensions)


.print \n---[PGM_CMT_001] Display the version of SQLite and the local date and time. 
select
   'Hello! ' || 'Current SQLite Version: ' || sqlite_version() || '; Current Local Date and Time: ' || datetime('now', 'localtime');


.print \n---[PGM_CMT_002] From the Census Bureau's ACS5 survey, show the 10 most populous counties in California.
.load lib/http0

select 
  value ->> '$[2]' as county,
  cast(value ->> '$[0]' as integer) as population
from json_each(
  http_get_body('https://api.census.gov/data/2020/acs/acs5?get=B01001_001E&for=county:*&in=state:06')
)
where key != 0 -- 1st element is headers, ex. '["B01001_001E","state","county"]'
order by population desc
limit 10;
/*

┌────────┬────────────┐
│ county │ population │
├────────┼────────────┤
│ 037    │ 10040682   │
│ 073    │ 3323970    │
│ 059    │ 3170345    │
│ 065    │ 2437864    │
│ 071    │ 2162532    │
│ 085    │ 1924379    │
└────────┴────────────┘
*/

