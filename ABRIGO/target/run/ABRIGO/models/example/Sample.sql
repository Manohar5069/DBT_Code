
  create or replace   view DBT_DB.DBT_SH.Sample
  
   as (
    

CREATE MASKING POLICY IF NOT EXISTS DBT_DB.DBT_SH.colmask AS (val STRING)
RETURNS STRING ->
    CASE 
        WHEN CURRENT_ROLE() IN ('SYSADMIN') THEN val
        ELSE '***********'
    END


  );

