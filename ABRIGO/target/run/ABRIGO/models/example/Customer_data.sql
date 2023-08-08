
  
    

        create or replace transient table DBT_DB.DBT_SH.Customer_data
         as
        ( 

WITH CUSTOMER_DATA AS (
    SELECT
        *
    FROM
        "DBT_DB"."DEMO_SH"."CUSTOMER_DATA"
)
SELECT
    ID AS CUSTOMER_ID,
    FIRST_NAME ,
    LAST_NAME ,
    EMAIL AS EMAIL_ID, 
    STREETADDRESS AS STREET_ADDRESS,
    CITY ,
    START_DATE 
FROM
CUSTOMER_DATA
        );
      
  