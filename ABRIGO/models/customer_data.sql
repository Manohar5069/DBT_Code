{{config(materialized = 'table')}} 

WITH CUSTOMER_DATA AS (
    SELECT
        *
    FROM
        "DEMO_DB"."GOOGLE_SHEETS"."CUSTOMER_DATA";
)
SELECT
    ID AS CUSTOMER_ID,
    FIRST_NAME ,
    LAST_NAME ,
    EMAIL AS EMAIL_ID, 
    STREET_ADDRESS,
    CITY ,
    START_DATE 
FROM
CUSTOMER_DATA   

