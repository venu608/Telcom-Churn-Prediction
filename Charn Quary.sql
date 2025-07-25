select Gender ,count(Gender) as TotalCount,
count(Gender) *100.0/(select count(*) from customer_data) as Percentage
from customer_data
Group by Gender;

select contract ,count(contract) as Totalcount,
count(contract) * 100.0/(select count(*) from customer_data) as percentage
from customer_data
Group by contract;

select Customer_status ,count(Customer_status) as Totalcount, sum(Total_Revenue) as TotalRev,
sum(Total_Revenue) / (select sum(Total_Revenue) from customer_data) *100 as Revpercentage
from customer_data
Group by Customer_Status;

SELECT State, Count(State) as TotalCount,
Count(State)* 100 /(Select Count(*) from Customer_data)  as Percentage
from Customer_data
Group by State
Order by Percentage desc