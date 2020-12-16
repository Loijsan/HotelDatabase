CREATE TABLE [dbo].[Dialouges]
(
	[BookingId] BIGINT NOT NULL, 
    [CustomerId] BIGINT NOT NULL, 
    [EmployeeId] INT NOT NULL, 
    [Message] NVARCHAR(50) NULL, 
    [ATA] DATETIME2 NOT NULL, 
    [ATD] DATETIME2 NULL, 
    CONSTRAINT [FK_Dialouges_ToBookings] FOREIGN KEY ([BookingId]) REFERENCES [Bookings]([Id]), 
    CONSTRAINT [FK_Dialouges_ToEmployees] FOREIGN KEY ([EmployeeId]) REFERENCES [Employees]([Id]), 
    CONSTRAINT [FK_Dialouges_ToCustomers] FOREIGN KEY ([CustomerId]) REFERENCES [Customers]([Id])
)
