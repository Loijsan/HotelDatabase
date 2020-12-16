CREATE VIEW BookingSpecificationOverview AS
SELECT BookingId, CustomerId, NumberOfPersons, ExtraServiceId, CheckInDate, CheckOutDate
FROM BookingSpecifications

