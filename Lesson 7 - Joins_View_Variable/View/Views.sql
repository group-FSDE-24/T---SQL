-------------- Views -------------- 


CREATE VIEW Book_Author_Category
AS
SELECT B.[Name] AS BookName, B.Pages, B.YearPress,B.Comment, 
C.[Name] AS CategoryName, A.FirstName, A.LastName	

FROM Books AS B
JOIN Categories AS C
ON B.Id_Category = C.Id
JOIN Authors AS A
ON A.Id = B.Id_Author

SELECT * FROM Book_Author_Category

ALTER VIEW Book_Author_Category
AS
SELECT B.[Name] AS BookName, B.Pages, B.YearPress,B.Comment, 
C.[Name] AS CategoryName, A.FirstName	

FROM Books AS B
JOIN Categories AS C
ON B.Id_Category = C.Id
JOIN Authors AS A
ON A.Id = B.Id_Author


--DROP VIEW Book_Author_Category


UPDATE Book_Author_Category
SET Pages = 850
WHERE BookName = 'SQL';


SELECT * FROM Book_Author_Category

select * from Books


-- Elave hisse
SELECT * FROM INFORMATION_SCHEMA.VIEWS
SELECT * FROM INFORMATION_SCHEMA.TABLES
SELECT * FROM INFORMATION_SCHEMA.COLUMNS


SELECT * FROM sys.tables
SELECT * FROM sys.all_columns
SELECT * FROM sys.views
SELECT * FROM sys.foreign_keys


------------------------------------------------------------------

CREATE VIEW Book_Author_Category
WITH ENCRYPTION
AS
SELECT B.[Name] AS BookName, B.Pages, B.YearPress,B.Comment, 
C.[Name] AS CategoryName, A.FirstName, A.LastName	

FROM Books AS B
JOIN Categories AS C
ON B.Id_Category = C.Id
JOIN Authors AS A
ON A.Id = B.Id_Author

SELECT * FROM Book_Author_Category

------------------------------------------------------------------

CREATE VIEW dbo.Book_Author_Category
WITH SCHEMABinding
AS
SELECT B.[Name] AS BookName, B.Pages, B.YearPress,B.Comment, 
C.[Name] AS CategoryName, A.FirstName, A.LastName	

FROM dbo.Books AS B
JOIN dbo.Categories AS C
ON B.Id_Category = C.Id
JOIN dbo.Authors AS A
ON A.Id = B.Id_Author

select * from Books
SELECT * FROM Book_Category

sp_rename 'Books.Name', 'Books.NewName'





