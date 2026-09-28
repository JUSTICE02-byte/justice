/*****************************************************************************************************************
NAME:    dbo.v_myfc_position_count_load
PURPOSE: Counts how many players play each position, for loading t_myfc_position_count.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     09/28/2026   SJ            1. Built this view for EC IT143 W4.2


RUNTIME: 
1s

NOTES: 
Joins tblPlayerDim to tblPositionDim and groups by position name.
The ORDER BY is left out on purpose, because views don't allow it.
 
******************************************************************************************************************/

USE EC_IT143_DA;
GO

-- Q1: How many players play each position?
-- A1: Join players to positions, then count the players in each position.

CREATE OR ALTER VIEW dbo.v_myfc_position_count_load
AS
SELECT pos.p_name AS position_name,
       COUNT(pl.pl_id) AS player_count
FROM dbo.tblPlayerDim AS pl
INNER JOIN dbo.tblPositionDim AS pos
    ON pl.p_id = pos.p_id
GROUP BY pos.p_name;
GO

SELECT * FROM dbo.v_myfc_position_count_load;