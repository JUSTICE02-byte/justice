USE EC_IT143_DA;
GO

DROP TABLE IF EXISTS dbo.t_myfc_position_count;

SELECT *
INTO dbo.t_myfc_position_count
FROM dbo.v_myfc_position_count_load;

SELECT * FROM dbo.t_myfc_position_count;