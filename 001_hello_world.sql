#!/usr/bin/sqlite3

-- --------------------------------------------------
--SQLite
select
    "Hello, World!" || ' Current Sqlite Version: ' || sqlite_version();
-- --------------------------------------------------


-- --------------------------------------------------
-- run macos 
-- $ sqlite3 test.db < 001_hello_world.sql

-- -----
--output
-->Hello, World! Current Sqlite Version: 3.37.0
-- --------------------------------------------------