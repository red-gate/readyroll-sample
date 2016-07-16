-- <Migration ID="b1823fac-5f84-4498-a57d-d413dcf71c4b" />
GO

PRINT N'Adding [Person].[Address].[CreatedDate] column (empty)'
GO
ALTER TABLE [Person].[Address]
    ADD [CreatedDate] [datetime] NULL
GO

PRINT N'Populating existing rows with data from the [ModifiedDate] column'
GO
UPDATE [Person].[Address]
    SET [CreatedDate] = [ModifiedDate]
    WHERE [CreatedDate] IS NULL
GO

PRINT N'Adding default constraint...'
GO
ALTER TABLE [Person].[Address]
    ADD CONSTRAINT [DF_Address_CreatedDate]
    DEFAULT (getdate())
    FOR [CreatedDate]
GO

PRINT N'Setting column to NOT NULL'
GO
ALTER TABLE [Person].[Address]
    ALTER COLUMN [CreatedDate] [datetime] NOT NULL
GO
