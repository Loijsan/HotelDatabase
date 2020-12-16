CREATE TABLE [dbo].[Bookings]
(
	[Id] BIGINT PRIMARY KEY NOT NULL IDENTITY, 
    [RoomId] INT NOT NULL, 
    CONSTRAINT [FK_Bookings_ToRooms] FOREIGN KEY ([RoomId]) REFERENCES [Rooms]([Id]), 

)

