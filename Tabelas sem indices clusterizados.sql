--Verify if any table dnt have the cluster key 

DECLARE @tbl TABLE
(
	ID INT IDENTITY(1,1),
	DBName NVARCHAR(100),
	TableName  NVARCHAR(100)
)	
	
DECLARE @SQL NVARCHAR(MAX)
SELECT @SQL = '
	SELECT ''?'',ts.Name 
	  FROM ?.sys.tables ts
 LEFT JOIN ?.sys.indexes si
	    ON  ts.object_id = si.object_id
	   AND  si.type = 1
INNER JOIN ?. sys.databases d
		ON d.Name=''?'' AND d.name NOT IN ( ''tempdb'',''master'',''msdb'',''ReportServer'')
     WHERE  si.index_id IS NULL
	'
INSERT INTO @tbl
EXECUTE sp_MSforeachdb @SQL

select * from @t