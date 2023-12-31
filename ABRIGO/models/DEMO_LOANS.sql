{{config(materialized = 'table')}} 

WITH DEMO_LOANS AS (
    SELECT
        *
    FROM
         {{source('RAW','DEMO_LOANS')}}
)

SELECT 
ENCOMPASSID, 
BLTV, 
BORROWERCOUNT, 
CHANNEL, 
CLOSINGBILLINGDATE, 
CONSTRUCTIONLOANINDICATOR, 
CREDITSCORETOUSE, 
LOANCREATEDDATEUTC, 
LOANIDNUMBER, 
LOANSOURCE, 
MATURITYDATE, 
MERSNUMBER, 
MOM, 
MORTGAGETYPE, 
OCCUPANCYTYPE, 
PMIINDICATOR, 
CORPORATEAPPROVALDATE, 
CORPORATEAPPROVEDBY, 
CURRENTLOCKDATE, 
DISCLOSURETYPE, 
LOANPROGRAM, 
PLANCODE, 
CLTV, 
DEBTTOINCOMERATIO, 
INTERESTRATE, 
LIENSTATUS, 
LOANPURPOSE, 
LOANTERM, 
LOANTYPE, 
PROPERTYTYPE, 
PROPERTYVALUE, 
STATECODE, 
TOTALLOANCOSTS, 
PROCESS_DATE, 
_FILE AS FILE_NAME,
_FIVETRAN_SYNCED
FROM
DEMO_LOANS
