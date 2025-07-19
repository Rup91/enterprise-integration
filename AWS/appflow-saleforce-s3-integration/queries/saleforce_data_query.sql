/*
    ** ========== Create Database SQL ======================
*/

CREATE DATABASE IF NOT EXISTS saleforce_integration_db;


/*
    ** =========== Create Table ========================
*/

CREATE EXTERNAL TABLE IF NOT EXISTS
saleforce_integration_db.accounts_data
(
    Name STRING,
    Phone STRING,
    AccountNumber STRING,
    IsDeleted BOOLEAN

)
ROW FORMAT SERDE
'org.openx.data.jsonserde.JsonSerDe'
WITH SERDEPROPERTIES (
    'ignore.malformed.json' = 'true'
)
LOCATION
's3://<bucket_name>/<appflow-output-path>/'
TBLPROPERTIES
('has_encrypted_data'='false');


/*
    ** =========== Select Data ========================
*/

SELECT * FROM saleforce_integration_db.accounts_data LIMIT 10;
