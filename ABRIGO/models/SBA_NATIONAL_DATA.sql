{{config(materialized = 'table')}} 

WITH SBA_NATIONAL_DATA AS (
    SELECT
        *
    FROM
         {{source('poc','SBA_NATIONAL_DATA')}}
)
SELECT
LoanNr_ChkDgt,
Name,
City,
State,
Zip,Bank,
BankState,
NAICS,
ApprovalDate,
ApprovalFY,
Term,
NoEmp,
NewExist,
CreateJob,
RetainedJob,
FranchiseCode,
UrbanRural,
RevLineCr,
LowDoc,
ChgOffDate,
DisbursementDate,
DisbursementGross,
BalanceGross,
MIS_Status,
ChgOffPrinGr,
GrAppv,
SBA_Appv  
FROM
SBA_NATIONAL_DATA   
