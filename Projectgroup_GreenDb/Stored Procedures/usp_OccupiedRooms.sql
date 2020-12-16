CREATE PROCEDURE [dbo].[usp_OccupiedRooms] @Roomnr INT
AS
	SELECT Bookings.Id, Bookings.RoomId, BookingSpecifications.CustomerId, BookingSpecifications.CheckInDate, BookingSpecifications.CheckOutDate
FROM Bookings
INNER JOIN BookingSpecifications ON Bookings.Id = BookingSpecifications.BookingId
WHERE Bookings.RoomId = @Roomnr
GO
