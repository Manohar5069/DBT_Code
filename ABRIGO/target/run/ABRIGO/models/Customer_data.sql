
  
    

        create or replace transient table DBT_DB.DBT_SH.customer_data
         as
        ( 

WITH CUSTOMER_DATA AS (
    SELECT
        *
    FROM
        "DBT_DB"."RAW1_SH"."CUSTOMER_DATA"
)
SELECT
    CUSTOMER_ID,
    FIRST_NAME ,
    LAST_NAME ,
    EMAIL_ID, 
    STREET_ADDRESS,
    CITY ,
    START_DATE 
FROM
CUSTOMER_DATA
        );
      
  