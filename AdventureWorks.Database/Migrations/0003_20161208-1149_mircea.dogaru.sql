-- <Migration ID="6876bf8a-d6ca-4e15-b868-648ca4eaf3a0" />
GO

PRINT N'Dropping constraints from [dbo].[DatabaseLog]'
GO
ALTER TABLE [dbo].[DatabaseLog] DROP CONSTRAINT [PK_DatabaseLog_DatabaseLogID]
GO
PRINT N'Dropping [dbo].[DatabaseLog]'
GO
DROP TABLE [dbo].[DatabaseLog]
GO
PRINT N'Altering [Person].[Address]'
GO
ALTER TABLE [Person].[Address] ADD
[Country] [nvarchar] (50) NULL,
[Planet] [nvarchar] (50) NULL
GO
PRINT N'Creating [Production].[ProductType]'
GO
CREATE TABLE [Production].[ProductType]
(
[id] [int] NOT NULL,
[Name] [nvarchar] (50) NOT NULL,
[Description] [nvarchar] (200) NULL
)
GO
PRINT N'Creating primary key [PK_ProductType] on [Production].[ProductType]'
GO
ALTER TABLE [Production].[ProductType] ADD CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED  ([id])
GO
