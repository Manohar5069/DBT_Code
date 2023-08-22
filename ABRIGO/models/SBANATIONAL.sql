{{config(materialized = 'table')}} 

WITH SBANATIONAL_DATA AS (
    SELECT
        *
    FROM
         {{source('poc','SBANATIONAL')}}
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
SBANATIONAL_DATA   
