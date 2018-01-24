DECLARE @cmd varchar(4000)
DECLARE cmds CURSOR FOR

	SELECT 
		'drop table [' + Table_Name + ']'
	FROM 
		INFORMATION_SCHEMA.TABLES
	WHERE 
		Table_Name LIKE '%_Delta2018%'
		OR Table_Name like '%_Deleted2018%'

OPEN cmds
WHILE 1 = 1
BEGIN
    FETCH cmds INTO @cmd
    IF @@fetch_status != 0 BREAK
    EXEC(@cmd)
END
CLOSE cmds;
DEALLOCATE cmds

