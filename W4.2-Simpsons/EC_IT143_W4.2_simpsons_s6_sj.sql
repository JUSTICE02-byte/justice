USE EC_IT143_DA;
GO

TRUNCATE TABLE dbo.t_simpsons_department_count;

INSERT INTO dbo.t_simpsons_department_count (department_name, member_count)
SELECT department_name, member_count
FROM dbo.v_simpsons_department_count_load;

SELECT * FROM dbo.t_simpsons_department_count;