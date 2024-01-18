-- 8. Indexing the first letter of the 'name' column
-- Requirements:
-- - Import the table dump: names.sql.zip
-- - Only the first letter of 'name' must be indexed
-- Context: Index is not the solution for any performance issue, but well used, it’s really powerful!

-- Import the table dump
-- Note: Adjust the path to the names.sql file as needed
SOURCE /path/to/names.sql;

-- Create an index idx_name_first on the first letter of 'name'
CREATE INDEX idx_name_first ON names (LEFT(name, 1));
