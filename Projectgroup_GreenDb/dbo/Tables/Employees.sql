CREATE TABLE [dbo].[Employees] (
    [Id]         INT    PRIMARY KEY  NOT NULL IDENTITY,
    [FullName]       NVARCHAR (50) NOT NULL,
    [Salary]    MONEY NOT NULL,
    [PositionId] INT           NOT NULL, 
    CONSTRAINT [FK_Employees_ToPostitions] FOREIGN KEY ([PositionId]) REFERENCES [Positions]([Id])
)