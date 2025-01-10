
-- Create a database for the Telco customer data
CREATE DATABASE telco_database;
-- Use the created database
USE telco_database;
-- Create a table to store Telco customer data
CREATE TABLE telco_table (
Customer_ID VARCHAR(20) PRIMARY KEY,
Gender VARCHAR(10),
Age INT,
Under_30 VARCHAR(3),
Senior_Citizen VARCHAR(3),
Married VARCHAR(3),
Dependents VARCHAR(3),
Number_of_Dependents INT,
Country VARCHAR(50),
State VARCHAR(50),
City VARCHAR(100),
Zip_Code VARCHAR(10),
Latitude DECIMAL(10, 6),
Longitude DECIMAL(10, 6),
Population INT,
Quarter VARCHAR(10),
Referred_a_Friend VARCHAR(3),
Number_of_Referrals INT,
Tenure_in_Months INT,
Offer VARCHAR(50),
Phone_Service VARCHAR(3),
Avg_Monthly_Long_Distance_Charges DECIMAL(10, 2),
Multiple_Lines VARCHAR(3),
Internet_Service VARCHAR(3),
Internet_Type VARCHAR(50),
Avg_Monthly_GB_Download DECIMAL(10, 2),
Online_Security VARCHAR(3),
Online_Backup VARCHAR(3),
Device_Protection_Plan VARCHAR(3),
Premium_Tech_Support VARCHAR(3),
Streaming_TV VARCHAR(3),
Streaming_Movies VARCHAR(3),
Streaming_Music VARCHAR(3),
Unlimited_Data VARCHAR(3),
Contract VARCHAR(20),
Paperless_Billing VARCHAR(3),
Payment_Method VARCHAR(50),
Monthly_Charge DECIMAL(10, 2),
Total_Charges DECIMAL(10, 2),
Total_Refunds DECIMAL(10, 2),
Total_Extra_Data_Charges DECIMAL(10, 2),
Total_Long_Distance_Charges DECIMAL(10, 2),
Total_Revenue DECIMAL(10, 2),
Satisfaction_Score INT,
Customer_Status VARCHAR(20),
Churn_Label VARCHAR(3),
Churn_Score INT,
CLTV INT,
Churn_Category VARCHAR(50),
Churn_Reason VARCHAR(255)
);

LOAD DATA LOCAL INFILE '/tmp/telco.csv'
INTO TABLE telco_table
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

show global variables like 'local_infile';
set global local_infile=true;