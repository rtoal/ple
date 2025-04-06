# SQL Explorations

To build and run SQL programs on your local machine, download and install the most recent language version from the [PostgreSQL downloads page](https://www.postgresql.org/download/) or use your favorite package manager.

Programs in this folder have been tested using PostgreSQL 17.4 and can be run from the command line like so (note that you will need to authenticate with your PostgreSQL account with your username and password):

```
psql -f triple.sql
```

```
psql -f permutations.sql I like carrots      # NOT TESTED YET
```

```
psql -f top_ten_scorers.sql < ../test/wnba_input        # NOT TESTED YET
```

Running the command `psql` with no arguments gives you a repl.

To run the tests, invoke `./test.sh` in a Unix-friendly shell or `test.ps1` in PowerShell.

## About

TODO

## Resources

- [PostgreSQL Home Page](https://www.postgresql.org/)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/)
