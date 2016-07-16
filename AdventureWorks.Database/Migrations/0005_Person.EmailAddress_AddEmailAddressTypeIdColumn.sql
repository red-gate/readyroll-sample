-- <Migration ID="9434b01b-7e99-47ac-80bb-156ad4f5568a" />
GO

PRINT N'Altering [Person].[EmailAddress]'
GO
ALTER TABLE [Person].[EmailAddress] ADD
[EmailAddressTypeID] [int] NULL CONSTRAINT [DF_EmailAddress_EmailAddressTypeID] DEFAULT ((1))
GO

PRINT N'Adding foreign keys to [Person].[EmailAddress]'
GO
ALTER TABLE [Person].[EmailAddress] ADD CONSTRAINT [FK_EmailAddress_EmailAddressType_EmailAddressTypeID] FOREIGN KEY ([EmailAddressTypeID]) REFERENCES [Person].[EmailAddressType] ([EmailAddressTypeID])
GO

PRINT N'Populating existing rows with default value'
UPDATE [Person].[EmailAddress]
    SET [EmailAddressTypeID] = 1
    WHERE [EmailAddress] IS NOT NULL
GO