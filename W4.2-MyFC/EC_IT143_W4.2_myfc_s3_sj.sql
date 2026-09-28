USE EC_IT143_DA;
GO

SELECT pos.p_name AS position_name,
       COUNT(pl.pl_id) AS player_count
FROM dbo.tblPlayerDim AS pl
INNER JOIN dbo.tblPositionDim AS pos
    ON pl.p_id = pos.p_id
GROUP BY pos.p_name
ORDER BY pos.p_name;