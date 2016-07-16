-- <Migration ID="3ebe5544-66cb-4c2e-b57a-36f9512675c1" />
GO

SET DATEFORMAT YMD;


GO
DECLARE @pv AS BINARY (16);


GO
IF (SELECT COUNT(*)
    FROM   [HumanResources].[Department]) = 0
    BEGIN
        PRINT (N'Add 16 rows to [HumanResources].[Department]');
        SET IDENTITY_INSERT [HumanResources].[Department] ON;
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (1, N'Engineering', N'Research and Development', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (2, N'Tool Design', N'Research and Development', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (3, N'Sales', N'Sales and Marketing', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (4, N'Marketing', N'Sales and Marketing', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (5, N'Purchasing', N'Inventory Management', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (6, N'Research and Development', N'Research and Development', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (7, N'Production', N'Manufacturing', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (8, N'Production Control', N'Manufacturing', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (9, N'Human Resources', N'Executive General and Administration', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (10, N'Finance', N'Executive General and Administration', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (11, N'Information Services', N'Executive General and Administration', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (12, N'Document Control', N'Quality Assurance', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (13, N'Quality Assurance', N'Quality Assurance', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (14, N'Facilities and Maintenance', N'Executive General and Administration', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (15, N'Shipping and Receiving', N'Inventory Management', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate])
        VALUES                                    (16, N'Executive', N'Executive General and Administration', '2008-04-30 00:00:00.000');
        SET IDENTITY_INSERT [HumanResources].[Department] OFF;
    END


GO
IF (SELECT COUNT(*)
    FROM   [HumanResources].[Shift]) = 0
    BEGIN
        PRINT (N'Add 3 rows to [HumanResources].[Shift]');
        SET IDENTITY_INSERT [HumanResources].[Shift] ON;
        INSERT  INTO [HumanResources].[Shift] ([ShiftID], [Name], [StartTime], [EndTime], [ModifiedDate])
        VALUES                               (1, N'Day', '07:00:00.0000000', '15:00:00.0000000', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Shift] ([ShiftID], [Name], [StartTime], [EndTime], [ModifiedDate])
        VALUES                               (2, N'Evening', '15:00:00.0000000', '23:00:00.0000000', '2008-04-30 00:00:00.000');
        INSERT  INTO [HumanResources].[Shift] ([ShiftID], [Name], [StartTime], [EndTime], [ModifiedDate])
        VALUES                               (3, N'Night', '23:00:00.0000000', '07:00:00.0000000', '2008-04-30 00:00:00.000');
        SET IDENTITY_INSERT [HumanResources].[Shift] OFF;
    END


GO
IF (SELECT COUNT(*)
    FROM   [Person].[AddressType]) = 0
    BEGIN
        PRINT (N'Add 6 rows to [Person].[AddressType]');
        SET IDENTITY_INSERT [Person].[AddressType] ON;
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate])
        VALUES                             (1, N'Billing', 'b84f78b1-4efe-4a0e-8cb7-70e9f112f886', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate])
        VALUES                             (2, N'Home', '41bc2ff6-f0fc-475f-8eb9-cec0805aa0f2', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate])
        VALUES                             (3, N'Main Office', '8eeec28c-07a2-4fb9-ad0a-42d4a0bbc575', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate])
        VALUES                             (4, N'Primary', '24cb3088-4345-47c4-86c5-17b535133d1e', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate])
        VALUES                             (5, N'Shipping', 'b29da3f8-19a3-47da-9daa-15c84f4a83a5', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate])
        VALUES                             (6, N'Archive', 'a67f238a-5ba2-444b-966c-0467ed9c427f', '2008-04-30 00:00:00.000');
        SET IDENTITY_INSERT [Person].[AddressType] OFF;
    END


GO
IF (SELECT COUNT(*)
    FROM   [Person].[ContactType]) = 0
    BEGIN
        PRINT (N'Add 20 rows to [Person].[ContactType]');
        SET IDENTITY_INSERT [Person].[ContactType] ON;
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (1, N'Accounting Manager', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (2, N'Assistant Sales Agent', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (3, N'Assistant Sales Representative', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (4, N'Coordinator Foreign Markets', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (5, N'Export Administrator', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (6, N'International Marketing Manager', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (7, N'Marketing Assistant', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (8, N'Marketing Manager', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (9, N'Marketing Representative', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (10, N'Order Administrator', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (11, N'Owner', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (12, N'Owner/Marketing Assistant', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (13, N'Product Manager', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (14, N'Purchasing Agent', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (15, N'Purchasing Manager', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (16, N'Regional Account Representative', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (17, N'Sales Agent', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (18, N'Sales Associate', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (19, N'Sales Manager', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate])
        VALUES                             (20, N'Sales Representative', '2008-04-30 00:00:00.000');
        SET IDENTITY_INSERT [Person].[ContactType] OFF;
    END


GO
IF (SELECT COUNT(*)
    FROM   [Person].[CountryRegion]) = 0
    BEGIN
        PRINT (N'Add 238 rows to [Person].[CountryRegion]');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AD', N'Andorra', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AE', N'United Arab Emirates', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AF', N'Afghanistan', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AG', N'Antigua and Barbuda', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AI', N'Anguilla', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AL', N'Albania', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AM', N'Armenia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AN', N'Netherlands Antilles', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AO', N'Angola', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AQ', N'Antarctica', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AR', N'Argentina', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AS', N'American Samoa', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AT', N'Austria', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AU', N'Australia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AW', N'Aruba', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'AZ', N'Azerbaijan', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BA', N'Bosnia and Herzegovina', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BB', N'Barbados', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BD', N'Bangladesh', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BE', N'Belgium', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BF', N'Burkina Faso', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BG', N'Bulgaria', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BH', N'Bahrain', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BI', N'Burundi', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BJ', N'Benin', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BM', N'Bermuda', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BN', N'Brunei', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BO', N'Bolivia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BR', N'Brazil', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BS', N'Bahamas, The', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BT', N'Bhutan', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BV', N'Bouvet Island', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BW', N'Botswana', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BY', N'Belarus', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'BZ', N'Belize', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CA', N'Canada', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CC', N'Cocos (Keeling) Islands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CD', N'Congo (DRC)', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CF', N'Central African Republic', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CG', N'Congo', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CH', N'Switzerland', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CI', N'Côte d''Ivoire', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CK', N'Cook Islands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CL', N'Chile', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CM', N'Cameroon', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CN', N'China', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CO', N'Colombia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CR', N'Costa Rica', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CS', N'Serbia and Montenegro', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CU', N'Cuba', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CV', N'Cape Verde', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CX', N'Christmas Island', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CY', N'Cyprus', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'CZ', N'Czech Republic', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'DE', N'Germany', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'DJ', N'Djibouti', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'DK', N'Denmark', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'DM', N'Dominica', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'DO', N'Dominican Republic', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'DZ', N'Algeria', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'EC', N'Ecuador', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'EE', N'Estonia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'EG', N'Egypt', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'ER', N'Eritrea', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'ES', N'Spain', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'ET', N'Ethiopia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'FI', N'Finland', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'FJ', N'Fiji Islands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'FK', N'Falkland Islands (Islas Malvinas)', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'FM', N'Micronesia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'FO', N'Faroe Islands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'FR', N'France', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GA', N'Gabon', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GB', N'United Kingdom', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GD', N'Grenada', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GE', N'Georgia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GF', N'French Guiana', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GH', N'Ghana', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GI', N'Gibraltar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GL', N'Greenland', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GM', N'Gambia, The', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GN', N'Guinea', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GP', N'Guadeloupe', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GQ', N'Equatorial Guinea', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GR', N'Greece', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GS', N'South Georgia and the South Sandwich Islands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GT', N'Guatemala', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GU', N'Guam', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GW', N'Guinea-Bissau', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'GY', N'Guyana', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'HK', N'Hong Kong SAR', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'HM', N'Heard Island and McDonald Islands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'HN', N'Honduras', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'HR', N'Croatia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'HT', N'Haiti', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'HU', N'Hungary', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'ID', N'Indonesia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'IE', N'Ireland', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'IL', N'Israel', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'IN', N'India', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'IO', N'British Indian Ocean Territory', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'IQ', N'Iraq', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'IR', N'Iran', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'IS', N'Iceland', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'IT', N'Italy', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'JM', N'Jamaica', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'JO', N'Jordan', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'JP', N'Japan', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'KE', N'Kenya', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'KG', N'Kyrgyzstan', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'KH', N'Cambodia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'KI', N'Kiribati', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'KM', N'Comoros', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'KN', N'Saint Kitts and Nevis', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'KP', N'North Korea', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'KR', N'Korea', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'KW', N'Kuwait', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'KY', N'Cayman Islands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'KZ', N'Kazakhstan', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'LA', N'Laos', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'LB', N'Lebanon', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'LC', N'Saint Lucia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'LI', N'Liechtenstein', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'LK', N'Sri Lanka', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'LR', N'Liberia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'LS', N'Lesotho', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'LT', N'Lithuania', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'LU', N'Luxembourg', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'LV', N'Latvia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'LY', N'Libya', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MA', N'Morocco', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MC', N'Monaco', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MD', N'Moldova', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MG', N'Madagascar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MH', N'Marshall Islands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MK', N'Macedonia, Former Yugoslav Republic of', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'ML', N'Mali', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MM', N'Myanmar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MN', N'Mongolia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MO', N'Macao SAR', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MP', N'Northern Mariana Islands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MQ', N'Martinique', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MR', N'Mauritania', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MS', N'Montserrat', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MT', N'Malta', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MU', N'Mauritius', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MV', N'Maldives', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MW', N'Malawi', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MX', N'Mexico', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MY', N'Malaysia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'MZ', N'Mozambique', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'NA', N'Namibia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'NC', N'New Caledonia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'NE', N'Niger', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'NF', N'Norfolk Island', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'NG', N'Nigeria', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'NI', N'Nicaragua', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'NL', N'Netherlands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'NO', N'Norway', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'NP', N'Nepal', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'NR', N'Nauru', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'NU', N'Niue', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'NZ', N'New Zealand', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'OM', N'Oman', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'PA', N'Panama', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'PE', N'Peru', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'PF', N'French Polynesia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'PG', N'Papua New Guinea', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'PH', N'Philippines', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'PK', N'Pakistan', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'PL', N'Poland', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'PM', N'Saint Pierre and Miquelon', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'PN', N'Pitcairn Islands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'PR', N'Puerto Rico', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'PS', N'Palestinian Authority', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'PT', N'Portugal', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'PW', N'Palau', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'PY', N'Paraguay', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'QA', N'Qatar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'RE', N'Réunion', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'RO', N'Romania', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'RU', N'Russia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'RW', N'Rwanda', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SA', N'Saudi Arabia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SB', N'Solomon Islands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SC', N'Seychelles', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SD', N'Sudan', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SE', N'Sweden', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SG', N'Singapore', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SH', N'Saint Helena', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SI', N'Slovenia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SJ', N'Svalbard and Jan Mayen', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SK', N'Slovakia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SL', N'Sierra Leone', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SM', N'San Marino', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SN', N'Senegal', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SO', N'Somalia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SR', N'Suriname', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'ST', N'São Tomé and Príncipe', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SV', N'El Salvador', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SY', N'Syria', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'SZ', N'Swaziland', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TC', N'Turks and Caicos Islands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TD', N'Chad', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TF', N'French Southern and Antarctic Lands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TG', N'Togo', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TH', N'Thailand', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TJ', N'Tajikistan', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TK', N'Tokelau', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TL', N'Timor-Leste', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TM', N'Turkmenistan', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TN', N'Tunisia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TO', N'Tonga', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TR', N'Turkey', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TT', N'Trinidad and Tobago', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TV', N'Tuvalu', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TW', N'Taiwan', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'TZ', N'Tanzania', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'UA', N'Ukraine', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'UG', N'Uganda', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'UM', N'U.S. Minor Outlying Islands', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'US', N'United States', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'UY', N'Uruguay', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'UZ', N'Uzbekistan', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'VA', N'Vatican City', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'VC', N'Saint Vincent and the Grenadine', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'VE', N'Venezuela', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'VG', N'Virgin Islands, British', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'VI', N'Virgin Islands, U.S.', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'VN', N'Vietnam', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'VU', N'Vanuatu', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'WF', N'Wallis and Futuna', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'WS', N'Samoa', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'YE', N'Yemen', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'YT', N'Mayotte', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'ZA', N'South Africa', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'ZM', N'Zambia', '2008-04-30 00:00:00.000');
        INSERT  INTO [Person].[CountryRegion] ([CountryRegionCode], [Name], [ModifiedDate])
        VALUES                               (N'ZW', N'Zimbabwe', '2008-04-30 00:00:00.000');
    END


GO
IF (SELECT COUNT(*)
    FROM   [Person].[PhoneNumberType]) = 0
    BEGIN
        PRINT (N'Add 3 rows to [Person].[PhoneNumberType]');
        SET IDENTITY_INSERT [Person].[PhoneNumberType] ON;
        INSERT  INTO [Person].[PhoneNumberType] ([PhoneNumberTypeID], [Name], [ModifiedDate])
        VALUES                                 (1, N'Cell', '2017-12-13 13:19:22.273');
        INSERT  INTO [Person].[PhoneNumberType] ([PhoneNumberTypeID], [Name], [ModifiedDate])
        VALUES                                 (2, N'Home', '2017-12-13 13:19:22.273');
        INSERT  INTO [Person].[PhoneNumberType] ([PhoneNumberTypeID], [Name], [ModifiedDate])
        VALUES                                 (3, N'Work', '2017-12-13 13:19:22.273');
        SET IDENTITY_INSERT [Person].[PhoneNumberType] OFF;
    END


GO
IF (SELECT COUNT(*)
    FROM   [Production].[Culture]) = 0
    BEGIN
        PRINT (N'Add 8 rows to [Production].[Culture]');
        INSERT  INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate])
        VALUES                             (N'      ', N'Invariant Language (Invariant Country)', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate])
        VALUES                             (N'ar    ', N'Arabic', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate])
        VALUES                             (N'en    ', N'English', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate])
        VALUES                             (N'es    ', N'Spanish', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate])
        VALUES                             (N'fr    ', N'French', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate])
        VALUES                             (N'he    ', N'Hebrew', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate])
        VALUES                             (N'th    ', N'Thai', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate])
        VALUES                             (N'zh-cht', N'Chinese', '2008-04-30 00:00:00.000');
    END


GO
IF (SELECT COUNT(*)
    FROM   [Production].[UnitMeasure]) = 0
    BEGIN
        PRINT (N'Add 38 rows to [Production].[UnitMeasure]');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'BOX', N'Boxes', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'BTL', N'Bottle', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'C  ', N'Celsius', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'CAN', N'Canister', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'CAR', N'Carton', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'CBM', N'Cubic meters', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'CCM', N'Cubic centimeter', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'CDM', N'Cubic decimeter', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'CM ', N'Centimeter', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'CM2', N'Square centimeter', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'CR ', N'Crate', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'CS ', N'Case', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'CTN', N'Container', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'DM ', N'Decimeter', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'DZ ', N'Dozen', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'EA ', N'Each', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'FT3', N'Cubic foot', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'G  ', N'Gram', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'GAL', N'Gallon', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'IN ', N'Inch', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'KG ', N'Kilogram', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'KGV', N'Kilogram/cubic meter', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'KM ', N'Kilometer', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'KT ', N'Kiloton', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'L  ', N'Liter', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'LB ', N'US pound', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'M  ', N'Meter', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'M2 ', N'Square meter', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'M3 ', N'Cubic meter', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'MG ', N'Milligram', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'ML ', N'Milliliter', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'MM ', N'Millimeter', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'OZ ', N'Ounces', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'PAK', N'Pack', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'PAL', N'Pallet', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'PC ', N'Piece', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'PCT', N'Percentage', '2008-04-30 00:00:00.000');
        INSERT  INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate])
        VALUES                                 (N'PT ', N'Pint, US liquid', '2008-04-30 00:00:00.000');
    END


GO
IF (SELECT COUNT(*)
    FROM   [Sales].[Currency]) = 0
    BEGIN
        PRINT (N'Add 105 rows to [Sales].[Currency]');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'AED', N'Emirati Dirham', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'AFA', N'Afghani', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'ALL', N'Lek', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'AMD', N'Armenian Dram', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'ANG', N'Netherlands Antillian Guilder', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'AOA', N'Kwanza', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'ARS', N'Argentine Peso', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'ATS', N'Shilling', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'AUD', N'Australian Dollar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'AWG', N'Aruban Guilder', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'AZM', N'Azerbaijanian Manat', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'BBD', N'Barbados Dollar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'BDT', N'Taka', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'BEF', N'Belgian Franc', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'BGN', N'Bulgarian Lev', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'BHD', N'Bahraini Dinar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'BND', N'Brunei Dollar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'BOB', N'Boliviano', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'BRL', N'Brazilian Real', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'BSD', N'Bahamian Dollar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'BTN', N'Ngultrum', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'CAD', N'Canadian Dollar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'CHF', N'Swiss Franc', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'CLP', N'Chilean Peso', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'CNY', N'Yuan Renminbi', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'COP', N'Colombian Peso', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'CRC', N'Costa Rican Colon', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'CYP', N'Cyprus Pound', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'CZK', N'Czech Koruna', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'DEM', N'Deutsche Mark', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'DKK', N'Danish Krone', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'DOP', N'Dominican Peso', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'DZD', N'Algerian Dinar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'EEK', N'Kroon', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'EGP', N'Egyptian Pound', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'ESP', N'Spanish Peseta', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'EUR', N'EURO', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'FIM', N'Markka', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'FJD', N'Fiji Dollar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'FRF', N'French Franc', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'GBP', N'United Kingdom Pound', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'GHC', N'Cedi', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'GRD', N'Drachma', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'GTQ', N'Quetzal', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'HKD', N'Hong Kong Dollar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'HRK', N'Croatian Kuna', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'HUF', N'Forint', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'IDR', N'Rupiah', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'IEP', N'Irish Pound', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'ILS', N'New Israeli Shekel', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'INR', N'Indian Rupee', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'ISK', N'Iceland Krona', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'ITL', N'Italian Lira', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'JMD', N'Jamaican Dollar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'JOD', N'Jordanian Dinar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'JPY', N'Yen', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'KES', N'Kenyan Shilling', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'KRW', N'Won', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'KWD', N'Kuwaiti Dinar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'LBP', N'Lebanese Pound', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'LKR', N'Sri Lankan Rupee', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'LTL', N'Lithuanian Litas', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'LVL', N'Latvian Lats', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'MAD', N'Moroccan Dirham', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'MTL', N'Maltese Lira', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'MUR', N'Mauritius Rupee', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'MVR', N'Rufiyaa', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'MXN', N'Mexican Peso', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'MYR', N'Malaysian Ringgit', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'NAD', N'Namibia Dollar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'NGN', N'Naira', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'NLG', N'Netherlands Guilder', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'NOK', N'Norwegian Krone', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'NPR', N'Nepalese Rupee', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'NZD', N'New Zealand Dollar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'OMR', N'Omani Rial', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'PAB', N'Balboa', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'PEN', N'Nuevo Sol', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'PHP', N'Philippine Peso', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'PKR', N'Pakistan Rupee', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'PLN', N'Zloty', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'PLZ', N'Polish Zloty(old)', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'PTE', N'Portuguese Escudo', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'PYG', N'Guarani', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'ROL', N'Leu', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'RUB', N'Russian Ruble', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'RUR', N'Russian Ruble(old)', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'SAR', N'Saudi Riyal', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'SEK', N'Swedish Krona', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'SGD', N'Singapore Dollar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'SIT', N'Tolar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'SKK', N'Slovak Koruna', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'SVC', N'El Salvador Colon', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'THB', N'Baht', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'TND', N'Tunisian Dinar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'TRL', N'Turkish Lira', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'TTD', N'Trinidad and Tobago Dollar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'TWD', N'New Taiwan Dollar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'USD', N'US Dollar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'UYU', N'Uruguayan Peso', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'VEB', N'Bolivar', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'VND', N'Dong', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'XOF', N'CFA Franc BCEAO', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'ZAR', N'Rand', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate])
        VALUES                         (N'ZWD', N'Zimbabwe Dollar', '2008-04-30 00:00:00.000');
    END


GO
IF (SELECT COUNT(*)
    FROM   [Sales].[SalesReason]) = 0
    BEGIN
        PRINT (N'Add 10 rows to [Sales].[SalesReason]');
        SET IDENTITY_INSERT [Sales].[SalesReason] ON;
        INSERT  INTO [Sales].[SalesReason] ([SalesReasonID], [Name], [ReasonType], [ModifiedDate])
        VALUES                            (1, N'Price', N'Other', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[SalesReason] ([SalesReasonID], [Name], [ReasonType], [ModifiedDate])
        VALUES                            (2, N'On Promotion', N'Promotion', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[SalesReason] ([SalesReasonID], [Name], [ReasonType], [ModifiedDate])
        VALUES                            (3, N'Magazine Advertisement', N'Marketing', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[SalesReason] ([SalesReasonID], [Name], [ReasonType], [ModifiedDate])
        VALUES                            (4, N'Television  Advertisement', N'Marketing', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[SalesReason] ([SalesReasonID], [Name], [ReasonType], [ModifiedDate])
        VALUES                            (5, N'Manufacturer', N'Other', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[SalesReason] ([SalesReasonID], [Name], [ReasonType], [ModifiedDate])
        VALUES                            (6, N'Review', N'Other', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[SalesReason] ([SalesReasonID], [Name], [ReasonType], [ModifiedDate])
        VALUES                            (7, N'Demo Event', N'Marketing', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[SalesReason] ([SalesReasonID], [Name], [ReasonType], [ModifiedDate])
        VALUES                            (8, N'Sponsorship', N'Marketing', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[SalesReason] ([SalesReasonID], [Name], [ReasonType], [ModifiedDate])
        VALUES                            (9, N'Quality', N'Other', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[SalesReason] ([SalesReasonID], [Name], [ReasonType], [ModifiedDate])
        VALUES                            (10, N'Other', N'Other', '2008-04-30 00:00:00.000');
        SET IDENTITY_INSERT [Sales].[SalesReason] OFF;
    END


GO
IF (SELECT COUNT(*)
    FROM   [Sales].[CountryRegionCurrency]) = 0
    BEGIN
        PRINT (N'Add 109 rows to [Sales].[CountryRegionCurrency]');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'AE', N'AED', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'AR', N'ARS', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'AT', N'ATS', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'AT', N'EUR', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'AU', N'AUD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'BB', N'BBD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'BD', N'BDT', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'BE', N'BEF', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'BE', N'EUR', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'BG', N'BGN', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'BH', N'BHD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'BN', N'BND', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'BO', N'BOB', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'BR', N'BRL', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'BS', N'BSD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'BT', N'BTN', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'CA', N'CAD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'CH', N'CHF', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'CL', N'CLP', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'CN', N'CNY', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'CO', N'COP', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'CR', N'CRC', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'CY', N'CYP', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'CZ', N'CZK', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'DE', N'DEM', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'DE', N'EUR', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'DK', N'DKK', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'DO', N'DOP', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'DZ', N'DZD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'EC', N'USD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'EE', N'EEK', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'EG', N'EGP', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'ES', N'ESP', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'ES', N'EUR', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'FI', N'EUR', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'FI', N'FIM', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'FJ', N'FJD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'FR', N'EUR', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'FR', N'FRF', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'GB', N'GBP', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'GH', N'GHC', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'GR', N'EUR', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'GR', N'GRD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'GT', N'GTQ', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'HK', N'HKD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'HR', N'HRK', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'HU', N'HUF', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'ID', N'IDR', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'IE', N'EUR', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'IE', N'IEP', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'IL', N'ILS', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'IN', N'INR', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'IS', N'ISK', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'IT', N'EUR', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'IT', N'ITL', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'JM', N'JMD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'JO', N'JOD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'JP', N'JPY', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'KE', N'KES', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'KR', N'KRW', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'KW', N'KWD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'LB', N'LBP', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'LK', N'LKR', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'LT', N'LTL', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'LU', N'EUR', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'LV', N'LVL', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'MA', N'MAD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'MT', N'MTL', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'MU', N'MUR', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'MV', N'MVR', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'MX', N'MXN', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'MY', N'MYR', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'NA', N'NAD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'NG', N'NGN', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'NL', N'EUR', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'NL', N'NLG', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'NO', N'NOK', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'NP', N'NPR', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'NZ', N'NZD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'OM', N'OMR', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'PA', N'PAB', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'PE', N'PEN', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'PH', N'PHP', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'PK', N'PKR', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'PL', N'PLN', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'PL', N'PLZ', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'PT', N'EUR', '2008-04-30 00:00:00.000');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'PT', N'PTE', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'PY', N'PYG', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'RO', N'ROL', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'RU', N'RUB', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'RU', N'RUR', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'SA', N'SAR', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'SE', N'SEK', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'SG', N'SGD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'SI', N'SIT', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'SK', N'SKK', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'SV', N'SVC', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'TH', N'THB', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'TN', N'TND', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'TR', N'TRL', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'TT', N'TTD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'TW', N'TWD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'US', N'USD', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'UY', N'UYU', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'VE', N'VEB', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'VN', N'VND', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'ZA', N'ZAR', '2014-02-08 10:17:21.510');
        INSERT  INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate])
        VALUES                                      (N'ZW', N'ZWD', '2014-02-08 10:17:21.510');
    END


GO