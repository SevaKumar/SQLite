#!/usr/bin/sqlite3

-- --------------------------------------------------
-- Read blog. See README. 
-- SQLite Hello World!
.print \n---[PGM_CMT_001] Show the version of SQLite and the local date and time:
select
   'Hello! ' || 'Current SQLite Version: ' || sqlite_version() || '; Current Local Date and Time: ' || datetime('now', 'localtime');

-- --------------------------------------------------