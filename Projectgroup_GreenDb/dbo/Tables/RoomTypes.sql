CREATE TABLE [dbo].[RoomTypes]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [RoomType] NVARCHAR(50) NOT NULL, 
    [NumberOfBeds] INT NULL, 
    [Cost] MONEY NOT NULL, 
    [CostForExtraBeds] MONEY NULL, 
    [PositionId] INT NOT NULL, 
    CONSTRAINT [FK_RoomTypes_ToPositions] FOREIGN KEY ([PositionId]) REFERENCES [Positions]([Id])
)
