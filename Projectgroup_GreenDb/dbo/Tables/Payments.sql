CREATE TABLE [dbo].[Payments]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [TotalBookingSumId] BIGINT NOT NULL, 
    [PaymentOptionId] INT NOT NULL, 
    [BookingId] BIGINT NOT NULL, 
    [ReceiptNumber] NVARCHAR(50) NOT NULL, 
    [Payed] DATETIME2 NULL, 
    CONSTRAINT [FK_Payments_ToTotalBookingSums] FOREIGN KEY ([TotalBookingSumId]) REFERENCES [TotalBookingSums]([Id]), 
    CONSTRAINT [FK_Payments_ToPaymentOptions] FOREIGN KEY ([PaymentOptionId]) REFERENCES [PaymentOptions]([Id]), 
    CONSTRAINT [FK_Payments_ToBookings] FOREIGN KEY ([BookingId]) REFERENCES [Bookings]([Id])
)

