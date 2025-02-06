# PostgreSQL Shell (psql) Navigation Commands

## Connection Commands
```sql
\c [DBNAME]          -- Connect to database
\conninfo           -- Display connection information
\password [USER]    -- Change password for user
```

## Listing Information
```sql
\l                  -- List all databases
\dt                 -- List tables in current schema
\dt+                -- List tables with more information
\dt schema.*        -- List tables in specific schema
\du                 -- List users and roles
\dn                 -- List schemas
\df                 -- List functions
\dv                 -- List views
\di                 -- List indexes
\dT                 -- List data types
\ds                 -- List sequences
\dx                 -- List installed extensions
```

## Detailed Object Information
```sql
\d [TABLE]          -- Describe table, view, sequence
\d+ [TABLE]         -- More detailed table description
\sf [FUNCTION]      -- Show function definition
\sv [VIEW]          -- Show view definition
```

## Query Buffer Commands
```sql
\e                  -- Edit command in external editor
\g                  -- Execute last command again
\p                  -- Show contents of query buffer
\r                  -- Clear query buffer
\s [FILE]          -- Save command history
\w [FILE]          -- Write query buffer to file
```

## Output Formatting
```sql
\x                  -- Toggle expanded display
\a                  -- Toggle aligned/unaligned output
\H                  -- Toggle HTML output
\t                  -- Toggle display of column names
\f [STRING]        -- Set field separator
\pset [OPTION]     -- Set table output option
\timing            -- Toggle timing of commands
```

## System Commands
```sql
\cd [DIR]          -- Change directory
\! [COMMAND]       -- Execute shell command
\i FILE            -- Execute commands from file
\o [FILE]          -- Send results to file/pipe
\copy              -- Perform copy operation
```

## Help and Information
```sql
\?                  -- Show all psql commands
\h [COMMAND]       -- Get syntax help on SQL command
\encoding          -- Show current encoding
```

## Session Control
```sql
\set [NAME VALUE]  -- Set internal variable
\unset NAME        -- Unset internal variable
\echo [TEXT]       -- Print text to output
\q                 -- Quit psql
```
