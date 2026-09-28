USE EC_IT143_DA;
GO

TRUNCATE TABLE dbo.t_myfc_position_count;

INSERT INTO dbo.t_myfc_position_count (position_name, player_count)
SELECT position_name, player_count
FROM dbo.v_myfc_position_count_load;

SELECT * FROM dbo.t_myfc_position_count;