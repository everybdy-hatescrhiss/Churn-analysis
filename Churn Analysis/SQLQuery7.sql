CREATE VIEW vw_ChurnDATA AS 
SELECT * FROM prod_Churn WHERE Customer_Status IN('Churned', 'Stayed')


Create View vw_JoinData as 
SELECT * FROM prod_Churn Where Customer_Status = 'Joined'