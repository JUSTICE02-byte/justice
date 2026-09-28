USE EC_IT143_DA;
GO

CREATE OR ALTER PROCEDURE dbo.usp_hello_world_load
AS
/**********************************************************************************************

NAME:        dbo.usp_hello_world_load
PURPOSE:     Hello World - Load user stored procedure

MODIFICATION LOG:
Ver     Date          Author        Description
----    ----------    -----------   ------------------------------------------------------------
1.0     09/28/2026    SJ            1. Built this stored procedure for EC IT143 W4.2

RUNTIME:
1s

NOTES:
This procedure reloads t_hello_world from v_hello_world_load and is step 7 of 8 in the
Answer Focused Approach for T-SQL Data Manipulation.

**********************************************************************************************/

    BEGIN

        -- 1) Reload data
        TRUNCATE TABLE dbo.t_hello_world;

        INSERT INTO dbo.t_hello_world (my_message, current_date_time)
        SELECT v.my_message
             , v.current_date_time
        FROM dbo.v_hello_world_load AS v;

        -- 2) Review results
        SELECT t.*
        FROM dbo.t_hello_world AS t;

    END;
GO