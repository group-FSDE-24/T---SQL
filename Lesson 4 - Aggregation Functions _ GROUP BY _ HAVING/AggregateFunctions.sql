SELECT * FROM Books


--------------------------- Aggregate Functions --------------------------- 

-- COUNT, SUM, MIN, Max, AVG

SELECT COunt(*) FROM Books


SELECT COUNT([Date]) as [Date Count] FROM Books

------------------------------------------

SELECT SUM(Price) from Books


SELECT SUM(Price) from Books
WHERE Publisher = 'DiaSoft'


SELECT SUM(Price) FROM Books
WHERE Topic = 'Using a PC as a whole'



SELECT SUM(Price) FROM Books
WHERE Price > 20


------------------------------------------


SELECT MIN(Price) FROM Books


SELECT MIN(Price) FROM Books
where Publisher = 'BHV St. Petersburg'



------------------------------------------

SELECT MAX(Price) FROM Books


SELECT MAX(Price) FROM Books
where Category = 'To Windows 98'


------------------------------------------

SELECT AVG(Price) FROM Books

SELECT AVG(Pressrun) FROM Books
where Category = 'Windows NT'


SELECT AVG(Price) FROM Books
where Category = 'Windows NT'


-----------------------------------------

-- initialize
Declare @number int = 5

-- define
Declare @average float

--select  AVG(Price)
--From Books

select @average =  AVG(Price)
From Books


Print @average


-------------------------------------
-- Yazilma ardicilligi

-- SELECT
-- FROM
-- WHERE 
-- GROUP BY
-- HAVING
-- ORDER BY


-- Islenme ardicilligi

-- FROM
-- WHERE 
-- GROUP BY
-- HAVING
-- SELECT
-- ORDER BY 

------------- Task ------------- 

-- Men isteyiremki her kategoriyada nece kitab oldugunu gore bilim


SELECT * FROM Books


Select Category, COUNT(*) as [categoryCount]
From Books
WHERE Category is not null
Group by Category