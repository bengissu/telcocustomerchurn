# IBM Telco Customer Churn Data Analysis

This repository contains an SQL script and a public dataset (`telco.csv`) for creating and populating a database to analyze Telco customer data.

## Dataset

The dataset is publicly available on [Kaggle](https://www.kaggle.com/), containing information about Telco customers, their demographics, service details, and churn data.

## Files

- `create_telco_database.sql`: SQL script for setting up the Telco database and loading data.
- `telco.csv`: Public dataset used in the SQL script.

## How to Use

1. Ensure MySQL is installed on your system.
2. Clone this repository:
   ```bash
   git clone https://github.com/your-username/telco-database.git
   cd telco-database
   ```
3. Open create_telco_database.sql in MySQL Workbench or run it via command line:
   ````bash
    mysql -u your_user -p < create_telco_database.sql
    ```
    Verify that the data has been loaded successfully:
   ```sql
    USE telco_database;
    SELECT * FROM telco_table LIMIT 10;
   ````
   Notes
   Ensure local_infile is enabled in MySQL to load the CSV file:
   ````sql
    SHOW GLOBAL VARIABLES LIKE 'local_infile';
    SET GLOBAL local_infile = true;
    ```
   ````
