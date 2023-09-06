# MANAGEMENT SOFTWARE SYNC

A B2B Ecommerce requires to publish contents coming from a management software.

This management software syncronize its data once per day on a server storage, transferring a set of JSON files.
Then, the ecommerce scripts run to import those data into its own database.

You have to implement a service that runs each 5 minutes, and imports some data within a set of files to a running database.

Within the `samples/files` folder, you'll find a set of folders numbered from `1` to `10`.
Each folder simulates a new syncronization from the management software.

## How to start

First of all, you need to import the database schema that you find into the `db/structure.sql` file, into a MySql database

## Task 1

Move the content of the first not-empty folder from `backend/samples/files` to a `working` directory

Ex.

On the first attempt, you will work on the `backend/samples/files/1` folder content
On the second attempt, you have to use folder `backend/samples/files/2` and so on on the other attempts


## Task 2

On each run, compute the files by this specific order:

- storages
- agents
- categories
- clients
- clientsAddresses
- lists
- products
- stocks

Each file respects a specific schema, that you cand find into the `backend/samples/schema` folder

For each file:

- check that the structure respects the one expected
- export the data from the file, eventually convert them, and then write the necessary queries to import them into the database

# CREDITS

Simone Torrisi [https://github.com/storrisi]
Nikolas Mosca [https://github.com/NikolasMosca/NikolasMosca]
