CREATE DATABASE AcademyDB2

USE AcademyDB2


Create Table Students(
	Id int	Primary key identity(1,1),
	Firstname nvarchar(50) not null,
	Lastname nvarchar(50) not null  default('Empty'),
	Username nvarchar(110) Unique not null,
	Age tinyint not null Check(Age > 0) 
)


---------- Pk delete

ALTER TABLE Students
DROP CONSTRAINT PK__Students__3214EC07F0B90678

ALTER TABLE Students
ADD CONSTRAINT PK_Students_Id PRIMARY KEY(Id)


---- Task, Unique, Check, Default

-- Unique 


ALTER TABLE Students
DROP CONSTRAINT [UQ__Students__536C85E42D140A17]

ALTER TABLE Students
ADD CONSTRAINT UQ__Students__Username Unique(Username)


-- Check

ALTER TABLE Students
DROP CONSTRAINT [CK__Students__Age__5224328E]

ALTER TABLE Students
ADD CONSTRAINT CK__Students__Age Check(Age > 0)

-- Default

ALTER TABLE Students
DROP CONSTRAINT [DF__Students__Lastna__51300E55]

ALTER TABLE Students
ADD CONSTRAINT DF__Students__Last Default('Empty') FOR Lastname


