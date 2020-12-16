CREATE VIEW CustomerBookingInfo AS
SELECT Customers.Id, Customers.FullName, Customers.Telephone, BookingSpecifications.CustomerId, BookingSpecifications.BookingId, BookingSpecifications.CheckInDate, BookingSpecifications.CheckOutDate
FROM Customers
INNER JOIN BookingSpecifications ON Customers.Id = BookingSpecifications.CustomerId