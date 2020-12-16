CREATE TRIGGER [Update_Employee_Salary]
ON Employees
FOR Update



AS
BEGIN



Declare @Id int
Declare @OldSalary money, @NewSalary money
Declare @OldPositionId int, @NewPositionId int




Declare @InfoString nvarchar(1000)



select *
into #TempTable
from inserted



while (Exists(select Id from #TempTable))
BEGIN
set @InfoString =''



select Top 1 @Id = Id, @NewSalary = Salary, @NewPositionId = PositionId from #TempTable
select @OldSalary = Salary, @OldPositionId = PositionId from deleted where Id = @Id



set @InfoString = 'Employee with Id = ' + Cast (@Id as nvarchar (2)) + 'changed'
if (@OldSalary <> @NewSalary)
set @InfoString = @InfoString + 'SALARY from' + Cast(@OldSalary as nvarchar(10)) + 'to' + Cast(@NewSalary as nvarchar(10)) + 'SALARY'



if (@OldPositionId <> @NewPositionId)
set @InfoString = @InfoString + 'Position from' + Cast(@OldPositionId as nvarchar(10)) + 'to' + Cast(@NewPositionId as nvarchar(10)) + 'Position'



insert into CaptureEmpInfo values (@InfoString)
Delete from #TempTable where Id = @Id



END