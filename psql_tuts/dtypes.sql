CREATE DATABASE DataTypeDemo;
\c DataTypeDemo;

CREATE TABLE AllDataTypes (
    id SERIAL PRIMARY KEY,
    
    -- Numeric Data Types
    smallint_col SMALLINT,
    integer_col INTEGER,
    bigint_col BIGINT,
    decimal_col DECIMAL(10,2),
    numeric_col NUMERIC(10,2),
    real_col REAL,
    double_col DOUBLE PRECISION,
    serial_col SERIAL,
    bigserial_col BIGSERIAL,
    
    -- Date and Time Data Types
    date_col DATE,
    timestamp_col TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    timestamptz_col TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    time_col TIME,
    timetz_col TIMETZ,
    interval_col INTERVAL,
    
    -- String Data Types
    char_col CHAR(10),
    varchar_col VARCHAR(255),
    text_col TEXT,
    
    -- Bytea for Binary Data
    bytea_col BYTEA,
    
    -- Boolean Data Type
    boolean_col BOOLEAN,
    
    -- ENUM and ARRAY Data Types
    enum_col VARCHAR(20) CHECK (enum_col IN ('small', 'medium', 'large')),
    set_col TEXT[],
    
    -- JSON and XML Data Types
    json_col JSON,
    jsonb_col JSONB,
    xml_col XML
);
