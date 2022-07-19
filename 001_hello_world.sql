#!/usr/bin/sqlite3

-- --------------------------------------------------
--SQLite
select
   'Hello! ' || 'Current Sqlite Version: ' || sqlite_version() || '; Current Local Date and Time: ' || datetime('now','localtime');
-- --------------------------------------------------

