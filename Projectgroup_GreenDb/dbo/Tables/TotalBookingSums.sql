CREATE TABLE [dbo].[TotalBookingSums]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [BookingId] BIGINT NOT NULL, 
    [ExtraServiceId] INT NULL, 
    [Discount] MONEY NULL, 
    [TotalSum] MONEY NOT NULL, 
    CONSTRAINT [FK_TotalBookingSums_ToBookings] FOREIGN KEY ([BookingId]) REFERENCES [Bookings]([Id]), 
    CONSTRAINT [FK_TotalBookingSums_ToExtraServiceOptions] FOREIGN KEY ([ExtraServiceId]) REFERENCES [ExtraServiceOptions]([Id])
)
