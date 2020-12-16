CREATE VIEW EmployeePosition AS
SELECT Employees.FullName, Employees.PositionId, Positions.Id, Positions.Positions
FROM Employees
INNER JOIN Positions ON Employees.PositionId = Positions.Id

