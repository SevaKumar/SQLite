# SQLite Hello Word!

This is a simple hello world test program for SQLite. Run this test program to see if your computer has SQLite3 installed. Follow the steps below to install SQLite3 on your computer if you don't already have it.


You can find the 001_hello_world program [here at Github](https://github.com/SevaKumar/SQLite/blob/147e0310bc6405af7dd570231f3d33fac4d70494/001_hello_world.sql). To check if you have SQLite3, type the following command into the terminal window. The output will show where SQLite3 is located.


```Bash
which sqlite3   
```

If you have SQLite3, the output should look something like this.

output:
```Bash
/usr/bin/sqlite3  
```

You should be able to run the command below if you have SQLite3 and get the output below. Use the following command on macOS to run 001_hello_world.sql.
```Bash
sqlite3 test.db < 001_hello_world.sql
```

output:
```Bash
(PGM_CMT #1) ---Show the version of SQLite and the local date and time:
Hello! Current SQLite Version: 3.37.0; Current Local Date and Time: 2022-07-20 15:22:01
```

# Installing SQLite
If you need to set up SQLite, you can do so in any way you like. You can search the Internet for information on how to install SQLite. I went with the Homebrew.

This documentation shows you how to install [Homebrew](https://docs.brew.sh/Installation)

This documentation shows you the Homebrew formula for [SQLite](https://formulae.brew.sh/formula/sqlite)


```Bash
brew install sqlite   
```

If you have SQLite3 and can run the hello world test program, you have succeeded. Well done!

'###
