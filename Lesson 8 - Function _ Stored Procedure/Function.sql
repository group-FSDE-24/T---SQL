-- Functions












---------------------------------------------
-- A function must have a name, and the name cannot begin with a special character such as @, $, #, or other similar characters.
-- SELECT statements are the only ones that operate with functions.
-- We can use a function anywhere such as AVG, COUNT, SUM, MIN, DATE, and other functions with the SELECT query in SQL.
-- Whenever a function is called, it compiles.
-- Functions must return a value or result.
-- Functions use only input parameters.
-- We cannot use TRY and CATCH statements in functions.












---------------------------------------------
-- Types of Functions
--	1) System Functions
--	2) User-Defined Functions












---------------------------------------------
 -- 1) Scaliar Functions
 -- 2) Table-Valued Functions
		-- Inline table valued
		-- Multi statement table valued








		



---------------------------------------------
-- Scalar functions

CREATE FUNCTION CountBooksForReturn()
RETURNS int
AS
BEGIN
	DECLARE @count int = 0

	SELECT @count = COUNT(*) FROM S_Cards
	WHERE S_Cards.DateIn IS NULL

	RETURN @count
END



SELECT dbo.CountBooksForReturn()

-- OR

PRINT dbo.CountBooksForReturn()

-- OR

DECLARE @count int = 0
EXEC @count = CountBooksForReturn
PRINT @count












---------------------------------------------
-- With Parameter

ALTER FUNCTION CountBooksForReturn(@stud_id int)
RETURNS int
AS
BEGIN
	DECLARE @count int = 0

	SELECT @count = COUNT(*) FROM S_Cards
	WHERE S_Cards.DateIn IS NULL AND
	S_Cards.Id_Student = @stud_id

	RETURN @count
END



SELECT dbo.CountBooksForReturn(5)

-- OR

DECLARE @count int = 0
EXEC @count = CountBooksForReturn 5
PRINT @count




---------------------------------------------
-- Inline table valued function


CREATE FUNCTION BookList()
RETURNS TABLE
RETURN 
SELECT B.Id, B.[Name] AS BookName, B.Pages, B.YearPress, T.[Name] AS Topic, C.[Name] AS Category,
		A.FirstName AS Author, P.[Name] AS Press, B.Comment, B.Quantity FROM Books AS B
		JOIN Themes AS T ON B.Id_Themes = T.Id
		JOIN Categories AS C ON B.Id_Category = C.Id
		JOIN Authors AS A ON B.Id_Author = A.Id
		JOIN Press AS P ON B.Id_Press = P.Id



SELECT * FROM BookList()












---------------------------------------------
-- Multi-Statement table valued function


CREATE FUNCTION TakenBooks()
RETURNS @TakenBooks TABLE(Id_Book int, DateOut datetime, DateIn datetime, Id_Lib int)
AS
BEGIN

	-- DECLARE @temp TABLE(Id_Book int, DateOut datetime, DateIn datetime, Id_Lib int)

	INSERT @TakenBooks
	SELECT Id_Book, DateOut, DateIn, Id_Lib FROM S_Cards

	INSERT @TakenBooks
	SELECT Id_Book, DateOut, DateIn, Id_Lib FROM T_Cards

	-- INSERT @TakenBooks
	-- SELECT * FROM @temp
	
	RETURN 
END




SELECT * FROM TakenBooks()