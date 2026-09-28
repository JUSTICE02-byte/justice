/*****************************************************************************************************************
NAME:    dbo.usp_myfc_position_count_load
PURPOSE: Reloads t_myfc_position_count from v_myfc_position_count_load.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     09/28/2026   SJO           1. Built this stored procedure for EC IT143 W4.2


RUNTIME: 
1s

NOTES: 
Empties the table with TRUNCATE, then refills it from the view.
Call it with: EXEC dbo.usp_myfc_position_count_load;
 
******************************************************************************************************************/

USE EC_IT143_DA;
GO

-- Q1: How many players play each position?
-- A1: Clear the table, then reload it from the view.

CREATE OR ALTER PROCEDURE dbo.usp_myfc_position_count_load
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.t_myfc_position_count;

    INSERT INTO dbo.t_myfc_position_count (position_name, player_count)
    SELECT position_name, player_count
    FROM dbo.v_myfc_position_count_load;
END;
GO