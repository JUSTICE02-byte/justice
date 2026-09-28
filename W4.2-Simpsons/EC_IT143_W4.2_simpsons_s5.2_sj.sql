USE EC_IT143_DA;
GO

DROP TABLE IF EXISTS dbo.t_simpsons_department_count;

CREATE TABLE dbo.t_simpsons_department_count
(
    department_name VARCHAR(100) NOT NULL,
    member_count    INT          NOT NULL DEFAULT 0,
    CONSTRAINT PK_t_simpsons_department_count PRIMARY KEY (department_name)
);