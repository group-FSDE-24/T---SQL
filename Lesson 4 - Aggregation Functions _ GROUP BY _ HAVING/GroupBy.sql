------ Group BY, Having ------ 


select Category, SUM(Price)
from Books
where Category is not null
group by Category



--- Group by istifade edende, Group by etdiyimiz columnu ekrana cixartda bilirem
--- Group by etdiyimiz column-dan elave, Aggregation function ile netice cixartda bilerem


select Category, SUM(Price) 
from Books
where Category is not null
group by Category
HAVING SUM(Price) < 20



select Price, COUNT(*) from Books
group by Price

select price from Books

-- Duzgun deyil asagidaki 
select Category, Price
from Books
where Category is not null
group by Category


----------------- Task: Categoriylardan maxprice, minprice olanlari ekrana cixarin


 select Category, Max(Price), Min(Price)
from Books
where Category is not null
group by Category


----------------- Task: En Meshur Topicleri ekrana cixarin. 


Select Top 1 with ties Topic, COUNT(*)
From Books
Group by Topic
order by COUNT(*) desc


----------------- Task: En az satilan Topicleri ekrana cixarin. 

Select Top 1 with ties Topic, COUNT(*)
From Books
where Topic is not null
Group by Topic
order by COUNT(*) 

