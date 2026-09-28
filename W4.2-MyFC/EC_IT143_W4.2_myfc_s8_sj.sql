USE EC_IT143_DA;
GO

EXEC dbo.usp_myfc_position_count_load;

SELECT * FROM dbo.t_myfc_position_count;