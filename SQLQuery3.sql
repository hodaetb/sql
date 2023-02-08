--1
SELECT SUM(Quantity)
FROM [dbo].[Sale_Table]

--2
select count (distinct Customer) as Number_of_customrs 
from [dbo].[Sale_Table]

--3
SELECT Product , SUM(Quantity) as count
FROM [dbo].[Sale_Table]
GROUP BY Product

--4
Select Customer, SUM(Quantity * UnitPrice) as Total, COUNT(distinct OrderID) as order_count, SUM(Quantity) Item_coount
from [dbo].[Sale_Table]
where Quantity * UnitPrice > 1500
group by Customer 

 --5
Select SUM(UnitPrice * ProfitRatio)
from [dbo].[Sale_Table] 
join [dbo].[Sale_Profit] 
on [dbo].[Sale_Table].Product = [dbo].[Sale_Profit].Product



--6
select SUM(count)
from(
select Date , count(distinct Customer) as count
from [dbo].[Sale_Table]
group by Date) as t
