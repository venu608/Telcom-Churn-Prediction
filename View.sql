SELECT * FROM db_chrun.prod_churn;

create view vw_ChurnData As 
           select * From prod_churn where Customer_Status IN ('Churned' , 'Stayed');
           
Create View vw_JoinedData As
            select * From prod_churn where Customer_Status = 'Joined';