CREATE DATABASE IF NOT EXISTS DataTypeDemo;
USE DataTypeDemo;

CREATE TABLE AllDataTypes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    
    -- Numeric Data Types
    tinyint_col TINYINT,
    smallint_col SMALLINT,
    mediumint_col MEDIUMINT,
    int_col INT,
    bigint_col BIGINT,
    decimal_col DECIMAL(10,2),
    float_col FLOAT,
    double_col DOUBLE,
    bit_col BIT(8),
    
    -- Date and Time Data Types
    date_col DATE,
    datetime_col DATETIME,
    timestamp_col TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    time_col TIME,
    year_col YEAR,
    
    -- String Data Types
    char_col CHAR(10),
    varchar_col VARCHAR(255),
    text_col TEXT,
    tinytext_col TINYTEXT,
    mediumtext_col MEDIUMTEXT,
    longtext_col LONGTEXT,
    binary_col BINARY(16),
    varbinary_col VARBINARY(255),
    blob_col BLOB,
    tinyblob_col TINYBLOB,
    mediumblob_col MEDIUMBLOB,
    longblob_col LONGBLOB,
    
    -- ENUM and SET Data Types
    enum_col ENUM('small', 'medium', 'large'),
    set_col SET('a', 'b', 'c', 'd')
);




------------------------

---for alter---

ALTER TABLE more
ADD COLUMN ts_mem TIMESTAMP DEFULT CURRENT_TIMESTAMP;
