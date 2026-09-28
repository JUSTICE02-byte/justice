USE EC_IT143_DA;
GO

DROP TABLE IF EXISTS dbo.t_myfc_position_count;

CREATE TABLE dbo.t_myfc_position_count
(
    position_name VARCHAR(50) NOT NULL,
    player_count  INT         NOT NULL DEFAULT 0,
    CONSTRAINT PK_t_myfc_position_count PRIMARY KEY (position_name)
);