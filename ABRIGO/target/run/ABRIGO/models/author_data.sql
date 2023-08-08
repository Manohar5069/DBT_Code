
  
    

        create or replace transient table DBT_DB.DBT_SH.author_data
         as
        ( 

WITH AUTHOR_DATA AS (
    SELECT
        *
    FROM
        "DBT_DB"."RAW2_SH"."AUTHOR_DATA"
)
SELECT
    AUTHOR_UID,
    FIRST_NAME ,
    LAST_NAME ,
    MIDDLE_NAME
FROM
AUTHOR_DATA
        );
      
  