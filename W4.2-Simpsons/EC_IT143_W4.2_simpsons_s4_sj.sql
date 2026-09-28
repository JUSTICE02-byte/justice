/*****************************************************************************************************************
NAME:    dbo.v_simpsons_department_count_load
PURPOSE: Counts how many family members are in each department, for loading t_simpsons_department_count.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     09/28/2026   SJ            1. Built this view for EC IT143 W4.2


RUNTIME: 
1s

NOTES: 
Reads dbo.Family_Data and groups by Department.
Rows with no department are labeled 'Unknown' so the table's primary key never gets a NULL.
The ORDER BY is left out on purpose, because views don't allow it.
 
******************************************************************************************************************/

USE EC_IT143_DA;
GO

-- Q1: How many family members are in each department?
-- A1: Count the rows in Family_Data, grouped by department.

CREATE OR ALTER VIEW dbo.v_simpsons_department_count_load
AS
SELECT COALESCE(Department, 'Unknown') AS department_name,
       COUNT(Member_ID) AS member_count
FROM dbo.Family_Data
GROUP BY COALESCE(Department, 'Unknown');
GO

SELECT * FROM dbo.v_simpsons_department_count_load;