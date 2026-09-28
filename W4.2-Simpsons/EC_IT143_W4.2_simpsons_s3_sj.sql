USE EC_IT143_DA;
GO

SELECT COALESCE(Department, 'Unknown') AS department_name,
       COUNT(Member_ID) AS member_count
FROM dbo.Family_Data
GROUP BY COALESCE(Department, 'Unknown')
ORDER BY department_name;