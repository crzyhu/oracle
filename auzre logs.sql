SELECT count(*)
  FROM [dbo].[EventLogs]

  
  select getdate() 
  -------------------------------------------
SELECT [TimeGenerated],
substring([Message],patindex('%Account Name:%', [Message]),200),
trim(substring([Message],patindex('%Source Network Address:%', [Message]) + 23,13))
  FROM [dbo].[EventLogs]
  where logguid = (select guid from [dbo].[Logs] where LogName = 'Security')
  and Source = 'Microsoft-Windows-Security-Auditing'
  and TimeGenerated > getdate() - 1
 and EntryType ='FailureAudit'
  and Message like '%Logon Failed%'
  order by 1 desc 


  SELECT 
  FROM [dbo].[EventLogs]
  where logguid = (select guid from [dbo].[Logs] where LogName = 'Security')
  and Source = 'Microsoft-Windows-Security-Auditing'
  and TimeGenerated > getdate() - 1
 and EntryType ='FailureAudit'
  and Message like '%Logon Failed%'
  order by 1 desc 

  select len('Source Network Address: 178.57.110.2 77.92.143.44')