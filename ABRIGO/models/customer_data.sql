{{config(materialized = 'table')}} 

WITH CUSTOMER_DATA AS (
    SELECT
        *
    FROM
        {{source('poc','customer_data')}}
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

