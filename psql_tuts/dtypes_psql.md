Here’s an approximate breakdown of how much storage each column takes in PostgreSQL:

### **Numeric Data Types**
| Column        | Data Type          | Storage (Bytes) |
|--------------|------------------|----------------|
| `smallint_col` | SMALLINT         | 2              |
| `integer_col` | INTEGER          | 4              |
| `bigint_col`  | BIGINT           | 8              |
| `decimal_col` | DECIMAL(10,2)    | Variable (~5-9) |
| `numeric_col` | NUMERIC(10,2)    | Variable (~5-9) |
| `real_col`    | REAL             | 4              |
| `double_col`  | DOUBLE PRECISION | 8              |
| `serial_col`  | SERIAL           | 4 (INTEGER)    |
| `bigserial_col` | BIGSERIAL      | 8 (BIGINT)     |

### **Date and Time Data Types**
| Column         | Data Type      | Storage (Bytes) |
|---------------|--------------|----------------|
| `date_col`    | DATE         | 4              |
| `timestamp_col` | TIMESTAMP   | 8              |
| `timestamptz_col` | TIMESTAMPTZ | 8          |
| `time_col`    | TIME         | 8              |
| `timetz_col`  | TIMETZ       | 12             |
| `interval_col` | INTERVAL    | 16             |

### **String Data Types**
| Column       | Data Type    | Storage (Bytes) |
|-------------|------------|----------------|
| `char_col`  | CHAR(10)   | 10 + 1 (padding) |
| `varchar_col` | VARCHAR(255) | Variable (length + 1) |
| `text_col`  | TEXT       | Variable        |

### **Binary and Boolean Data**
| Column       | Data Type | Storage (Bytes) |
|-------------|----------|----------------|
| `bytea_col` | BYTEA    | Variable       |
| `boolean_col` | BOOLEAN | 1              |

### **ENUM and ARRAY Data**
| Column       | Data Type | Storage (Bytes) |
|-------------|----------|----------------|
| `enum_col`  | VARCHAR(20) | Variable (length + 1) |
| `set_col`   | TEXT[]   | Variable        |

### **JSON and XML Data Types**
| Column       | Data Type | Storage (Bytes) |
|-------------|----------|----------------|
| `json_col`  | JSON     | Variable       |
| `jsonb_col` | JSONB    | Variable (binary storage) |
| `xml_col`   | XML      | Variable       |

### **Total Row Storage (Approximate)**
Assuming all columns are filled with average values:
- Fixed-length columns: **~90 bytes**
- Variable-length columns: **Depends on the actual data size**

Let me know if you want more precise calculations based on real data! 🚀
