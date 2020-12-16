CREATE PROCEDURE [dbo].[usp_OccupiedDates] @CheckInDate DATETIME2, @CheckOutDate DATETIME2
AS
	SELECT Bookings.Id, BookingSpecifications.CustomerId, Bookings.RoomId, BookingSpecifications.CheckInDate, BookingSpecifications.CheckOutDate
FROM Bookings
INNER JOIN BookingSpecifications ON Bookings.Id = BookingSpecifications.BookingId
WHERE CheckInDate BETWEEN @CheckInDate AND @CheckOutDate
GO
