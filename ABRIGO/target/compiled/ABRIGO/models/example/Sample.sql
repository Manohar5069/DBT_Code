

CREATE MASKING POLICY IF NOT EXISTS DBT_DB.DBT_SH.colmask AS (val STRING)
RETURNS STRING ->
    CASE 
        WHEN CURRENT_ROLE() IN ('SYSADMIN') THEN val
        ELSE '***********'
    END

