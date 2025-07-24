----------------------------- Joins -----------------------------

--- Vertical alt alta

--- Horizontal yan yan


----------------------------- Joins

-- Implicit Where
-- Explicit Join


---------------------------------

--- Join

-- 1. Cross Join
-- 2. Inner Join
-- 3. Outer Join
--		3.1. Right Join
--		3.2. Left Join


-- 1. Cross Join -> n*m

Select * From Books
Select * From Authors

Select * From Books, Authors
where Name = 'SQL'

-- 2. Inner Join

Select * from Books as b
Inner Join Authors as a
On b.[Id_Author] = a.Id
WHERE b.Name = 'Visual Basic 6'

---- Lazimli datalari nece ala bilerem

Select b.[Name], b.Pages, b.YearPress, a.FirstName, a.LastName
from Books as b
Inner Join Authors as a
On b.[Id_Author] = a.Id


---------- Coxlu Join Etmek

Select b.[Name], b.Pages, b.YearPress, a.FirstName, a.LastName, c.[Name] as CategoryName
from Books as b
Inner Join Authors as a
On b.[Id_Author] = a.Id
Inner Join [Categories] as c
On c.Id = b.Id_Category

--------------------------------------------------------------------------------------------------------------------
---- Outer Join

-- Rigth, Left 

SELECT * FROM Students
Select * from S_Cards

-- Student S_Card 

-- Telebelerin kitab goturme statistikasi

SELECT * FROM Students as s
Left Join S_Cards as sc
ON sc.[Id_Student] = s.Id


-- Kitabxanadan kitab goturmeyen telebeler

SELECT * FROM Students as s
Left Join S_Cards as sc
ON sc.[Id_Student] = s.Id
WHERE sc.Id is not null

-----------------------------------------------------------
---- Rigth Join

SELECT * FROM Students as s
RIGHT JOIN Groups as g
on s.Id_Group  = g.Id



---- Rigth 
SELECT * FROM Students as s
RIGHT JOIN Groups as g
on s.Id_Group  = g.Id
WHERE s.Id is null


-----------------------------------------------------------
---- Full Join

SELECT * FROM Students as s
FULL JOIN Groups as g
on s.Id_Group  = g.Id




---------------

SELECT * FROM Students as s
FULL JOIN Groups as g
on s.Id_Group  = g.Id
WHERE s.Id is null



-------------------------------------------------------------------------------

---- Vertical Join 

---- Nelere diqqet etmeliyik

-- 1. Column sayi eyni olmalidir
-- 2. Columnlari tipi eyni olmalidir
-- 3. Order By 1 defe etmek olur
-- 4. Birinci column name olmalidir

-- Union		-> birlesdirir
-- Intersect	-> kesisdirir
-- Except		-> 1cide olub 2ci de olmayanlari goturmek ucun


-- Union
SELECT * From Authors
Union
SELECT * FROM Libs


-- Tip eyniliyi

SELECT FirstName, LastName from Authors
Union
SELECT LastName,FirstName  from Libs


-- Insersect

SELECT * FROM S_Cards
--Intersect
SELECT * FROM T_Cards

SELECT [Id_Book] FROM S_Cards
Intersect
SELECT [Id_Book] FROM T_Cards

-- Except -> 1cide olub. 2cide olmayanlari gotururuk


SELECT * FROM S_Cards
--Intersect
SELECT * FROM T_Cards

SELECT [Id_Book] FROM S_Cards
Except
SELECT [Id_Book] FROM T_Cards


-----------------------------------------------------------------

-- SubQuery -> All, Exist, Any, Some