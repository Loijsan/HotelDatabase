CREATE TABLE [dbo].[ExtraServiceOptions]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ExtraOption] NVARCHAR(50) NOT NULL, 
    [Cost] MONEY NOT NULL
)
