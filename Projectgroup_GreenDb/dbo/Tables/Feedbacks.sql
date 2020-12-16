CREATE TABLE [dbo].[Feedbacks]
(
	[CustomerId] BIGINT NOT NULL, 
    [BookingId] BIGINT NOT NULL, 
    [Rating] INT NULL, 
    [Feedback] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_Feedbacks_ToCustomers] FOREIGN KEY ([CustomerId]) REFERENCES [Customers]([Id]), 
    CONSTRAINT [FK_Feedbacks_ToBookings] FOREIGN KEY ([BookingId]) REFERENCES [Bookings]([Id])
)

