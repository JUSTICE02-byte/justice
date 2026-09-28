USE EC_IT143_DA;
GO

EXEC dbo.usp_simpsons_department_count_load;

SELECT * FROM dbo.t_simpsons_department_count;
