CREATE TABLE [dbo].[Customers]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [FullName] NVARCHAR(50) NOT NULL, 
    [Address] NVARCHAR(50) NOT NULL, 
    [Telephone] VARCHAR(20) NOT NULL, 
    [Email] NVARCHAR(50) NOT NULL
)


