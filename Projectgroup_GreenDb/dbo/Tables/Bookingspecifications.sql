CREATE TABLE [dbo].[BookingSpecifications]
(
	[BookingId] BIGINT NOT NULL, 
    [CustomerId] BIGINT NOT NULL, 
    [NumberOfPersons] INT NOT NULL, 
    [ExtraServiceId] INT NULL, 
    [CheckInDate] DATETIME2 NOT NULL, 
    [CheckOutDate] DATETIME2 NOT NULL, 
    CONSTRAINT [FK_BookingSpecifications_ToCustomers] FOREIGN KEY ([CustomerId]) REFERENCES [Customers]([Id]), 
    CONSTRAINT [FK_BookingSpecifications_ToExtraServiceOptions] FOREIGN KEY ([ExtraServiceId]) REFERENCES [ExtraServiceOptions]([Id]), 
    CONSTRAINT [FK_BookingSpecifications_ToBookings] FOREIGN KEY ([BookingId]) REFERENCES [Bookings]([Id])
)