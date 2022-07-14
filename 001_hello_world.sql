#!/usr/bin/sqlite3

--SQLite
select "Hello, World!" || ' Current Sqlite Version: ' || sqlite_version();

--output
-->Hello, World!


-- run macos 
-- $ sqlite3 test.db < 001_hello_world.sql