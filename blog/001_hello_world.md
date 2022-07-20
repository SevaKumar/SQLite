# Sqlite Hello Word

This is a test program to see if your computer has sqlite3 installed. If you don't have sqlite3 on your computer, please follow the steps below to install it.


You can find the 001_hello_world program [here](https://github.com/SevaKumar/SQLite/blob/147e0310bc6405af7dd570231f3d33fac4d70494/001_hello_world.sql). Type the following command into the terminal window. The output will show the location of sqlite3.


```Bash
which sqlite3   
```

If you have sqlite3, the output should look something like this.

output:
```Bash
/usr/bin/sqlite3  
```

How to run 001_hello_world on macos.
```Bash
sqlite3 test.db < 001_hello_world.sql
```

output:
```Bash
Hello! Current Sqlite Version: 3.37.0; Current Local Date and Time: 2022-07-15 19:22:00
```

# Installing Sqlite
If you need to set up sqlite, you can do it in any way you like. You can search the web to find out how to install sqlite. I went with Homebrew.


This documentation shows you how to install [Homebrew](https://docs.brew.sh/Installation)

This documentation shows you the Homebrew formula for [sqlite](https://formulae.brew.sh/formula/sqlite)


```Bash
brew install sqlite   
```

Test code
```
Some more testing testing!
```
