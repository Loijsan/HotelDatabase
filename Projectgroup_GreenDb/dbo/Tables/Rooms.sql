CREATE TABLE [dbo].[Rooms]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [RoomTypeId] INT NOT NULL, 
    CONSTRAINT [FK_Rooms_ToRoomtypes] FOREIGN KEY ([RoomTypeId]) REFERENCES [RoomTypes]([Id])
)
