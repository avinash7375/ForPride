Steps to create a table in psql shell:

1. Connect to database:
```bash
psql -U username -d database_name
```

2. Create Table Syntax:
```sql
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
);
```

3. Example:
```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

4. Verify table creation:
```sql
\dt  # List all tables
```

5. View table structure:
```sql
\d table_name
```