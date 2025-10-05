SELECT Gender, COUNT(Gender) as TotalCount,
COUNT(Gender) * 100.0 / (Select COUNT(*) From stg_Churn) as Percentage
From stg_Churn
Group By Gender

SELECT Contract, COUNT(Contract) as TotalCount,
COUNT(Contract) *1.0/ (SELECT COUNT(*) FROM stg_Churn) as Percentage
From stg_Churn
Group by Contract

SELECT Customer_status, COUNT(Customer_Status) as TotalCount, SUM(Total_Revenue) as TotalRev,
SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM stg_Churn)* 100 as RevPercentage
from stg_Churn
Group by Customer_Status

SELECT State, COUNT(State) as TotalCount,
COUNT(State) *100.0/ (SELECT COUNT(*) FROM stg_Churn) as Percentage
FROM stg_Churn
Group By State
Order by Percentage desc

Select Distinct Internet_Type
FROM stg_Churn
