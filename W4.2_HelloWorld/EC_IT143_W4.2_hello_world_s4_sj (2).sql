USE EC_IT143_DA;
GO

DROP VIEW IF EXISTS dbo.v_hello_world_load;
GO

CREATE VIEW dbo.v_hello_world_load
AS

/********************************************************************************************
NAME: dbo.v_hello_world_load
PURPOSE: Create the Hello World - Load view

MODIFICATION LOG:
Ver     Date        Author      Description
----    ----------  ----------  ---------------------------------
1.0     09/28/2026  SJ          1. Built this view for EC IT143 W4.2

RUNTIME:
1s

NOTES:
This view answers "What is the current date and time?" and is step 4 of 8 in the
Answer Focused Approach for T-SQL Data Manipulation.
********************************************************************************************/

SELECT 'Hello World' AS my_message
     , GETDATE() AS current_date_time;
GO

SELECT * FROM dbo.v_hello_world_load;