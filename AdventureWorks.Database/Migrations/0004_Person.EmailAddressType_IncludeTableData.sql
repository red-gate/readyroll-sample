-- <Migration ID="b2666d52-b6e2-41ca-a0ff-a472c01617ff" />
GO

SET DATEFORMAT YMD;


GO
DECLARE @pv AS BINARY (16);


GO
IF (SELECT COUNT(*)
    FROM   [Person].[EmailAddressType]) = 0
    BEGIN
        PRINT (N'Add 2 rows to [Person].[EmailAddressType]');
        SET IDENTITY_INSERT [Person].[EmailAddressType] ON;
        INSERT  INTO [Person].[EmailAddressType] ([EmailAddressTypeID], [Name], [ModifiedDate])
        VALUES                                  (1, N'Primary', '2016-06-09 11:53:42.037');
        INSERT  INTO [Person].[EmailAddressType] ([EmailAddressTypeID], [Name], [ModifiedDate])
        VALUES                                  (2, N'Secondary', '2016-06-09 11:53:42.040');
        SET IDENTITY_INSERT [Person].[EmailAddressType] OFF;
    END


GO