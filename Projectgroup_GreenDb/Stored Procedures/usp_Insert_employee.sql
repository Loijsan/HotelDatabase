CREATE PROCEDURE usp_InsertEmployee @FullName nvarchar(30), @Salary MONEY, @PositionId int
AS
    INSERT INTO Employees
    VALUES (@FullName, @Salary, @PositionId)
GO
