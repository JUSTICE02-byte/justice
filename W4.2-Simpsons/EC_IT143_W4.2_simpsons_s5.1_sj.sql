USE EC_IT143_DA;
GO

DROP TABLE IF EXISTS dbo.t_simpsons_department_count;

SELECT *
INTO dbo.t_simpsons_department_count
FROM dbo.v_simpsons_department_count_load;

SELECT * FROM dbo.t_simpsons_department_count;