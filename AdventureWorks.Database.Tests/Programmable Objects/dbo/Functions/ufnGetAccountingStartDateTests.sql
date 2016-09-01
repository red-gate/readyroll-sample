-- <Migration ID="f3829be9-eeae-4d48-859a-5c1056d78a32" />
EXEC tSQLt.NewTestClass 'ufnGetAccountingStartDateTests';
GO

CREATE PROCEDURE ufnGetAccountingStartDateTests.[test that correct accounting start date is returned]
AS
BEGIN
    DECLARE @actual DATETIME;
    SELECT @actual = [dbo].ufnGetAccountingStartDate();

    DECLARE @expected DATETIME;
    SET @expected = '2003-07-01';
    EXEC tSQLt.AssertEquals @expected, @actual;
END;
GO