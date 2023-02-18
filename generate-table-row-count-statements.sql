--
-- This script just generates SELECT COUNT(*) statements
-- for all tables in the 'user_table' system table.
--
SELECT
    'SELECT COUNT(*) AS table_row_count, '''
    || table_name
    || ''' AS table_name FROM '
    || table_name
    || ' UNION ALL'
FROM
    user_tables
ORDER BY
    table_name ASC;