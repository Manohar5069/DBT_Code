{{config(materialized = 'table')}} 

WITH SAMPLE_DATA AS (
    SELECT
        *
    FROM
        {{source('poc','sample_data')}}
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
SAMPLE_DATA   

