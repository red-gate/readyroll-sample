-- <Migration ID="55c3af45-7686-4890-bd01-d28c3108872e" />
GO

PRINT N'Creating [Person].[EmailAddressType]'
GO
CREATE TABLE [Person].[EmailAddressType]
(
[EmailAddressTypeID] [int] NOT NULL IDENTITY(1, 1),
[Name] [dbo].[Name] NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_EmailAddressType_ModifiedDate] DEFAULT (getdate())
)
GO
PRINT N'Creating primary key [PK_EmailAddressType_EmailAddressTypeID] on [Person].[EmailAddressType]'
GO
ALTER TABLE [Person].[EmailAddressType] ADD CONSTRAINT [PK_EmailAddressType_EmailAddressTypeID] PRIMARY KEY CLUSTERED  ([EmailAddressTypeID])
GO
