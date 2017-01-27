-- <Migration ID="31474244-3eb9-4ed9-a0a8-f1d8dcdd15c3" />
GO

PRINT N'Altering [Person].[Person]'
GO
ALTER TABLE [Person].[Person] ADD
[CreationDate] [datetime] NULL,
[TestField] [nchar] (10) NULL
GO
