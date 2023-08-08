
  create or replace   view DBT_DB.DBT_SH.Customer_raw
  
   as (
    WITH CUSTOMER_DATA AS (  
 SELECT  * FROM "DBT_DB.DEMO_SH.CUSTOMER_DATA"
)
SELECT
 ID AS CUSTOMER_id, -- new alias name
 FIRST_NAME,
 LAST_NAME,
 EMAIL AS EMAIL_ID,
 STREETADDRESS AS STREET_ADDRESS,
 CITY,
 START_DATE
FROM
CUSTOMER_DATA
  );

