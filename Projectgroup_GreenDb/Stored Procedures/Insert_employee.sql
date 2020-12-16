CREATE PROCEDURE InsertEmployee @FullName nvarchar(30), @Salary MONEY, @PosistionsID int
AS
INSERT INTO Employees
VALUES (@FullName, @Salary, @PosistionsID)