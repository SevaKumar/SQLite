#!/usr/bin/sqlite3

-- --------------------------------------------------
-- Read Blog: 
-- SQLite Hello World!
select
   'Hello! ' || 'Current Sqlite Version: ' || sqlite_version() || '; Current Local Date and Time: ' || datetime('now','localtime');
-- --------------------------------------------------

