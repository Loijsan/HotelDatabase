CREATE TRIGGER [tr_FillInGuest]
	ON [dbo].[StayingGuests]
	AFTER INSERT
	AS
DECLARE @Id BIGINT
DECLARE @Roomguest NVARCHAR(50)
DECLARE @Rooms INT

SELECT @Roomguest = RoomGuest, @Id = CustomerId, @Rooms = RoomId FROM Inserted

IF @Roomguest IS NULL
BEGIN
	UPDATE StayingGuests
	SET RoomGuest = (SELECT FullName FROM Customers WHERE Id = @Id)
	WHERE CustomerId = @Id AND RoomId = @Rooms
END

--Louise