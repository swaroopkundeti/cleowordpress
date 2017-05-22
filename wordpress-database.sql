IF (NOT EXISTS (SELECT name 
                FROM master.dbo.sysdatabases 
                WHERE ('[' + 'wordpressdb' + ']' = 'wordpressdb'
                   OR name = 'wordpressdb')))
BEGIN 
    CREATE DATABASE DBName

    PRINT 'DATABASE_CREATED' 
END 
ELSE 
    PRINT 'DATABASE_EXIST'
