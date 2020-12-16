CREATE TABLE [dbo].[StayingGuests]
(
	[CustomerId] BIGINT NOT NULL, 
    [RoomGuest] NVARCHAR(50) NULL, 
    [BookingId] BIGINT NOT NULL, 
    [RoomId] INT NOT NULL, 
    CONSTRAINT [FK_StayingGuests_ToCustomers] FOREIGN KEY ([CustomerId]) REFERENCES [Customers]([Id]), 
    CONSTRAINT [FK_StayingGuests_ToBookings] FOREIGN KEY ([BookingId]) REFERENCES [Bookings]([Id]), 
    CONSTRAINT [FK_StayingGuests_ToRooms] FOREIGN KEY ([RoomId]) REFERENCES [Rooms]([Id])
)