#!/usr/bin/sqlite3

-- --------------------------------------------------
-- Read Blog: https://medium.com/@seva.kumar/sqlite-hello-word-53c729fb858c
-- SQLite Hello World!
.print \n(PGM_CMT #1) ---Show the version of SQLite and the local date and time:
select
   'Hello! ' || 'Current SQLite Version: ' || sqlite_version() || '; Current Local Date and Time: ' || datetime('now','localtime');
-- --------------------------------------------------

