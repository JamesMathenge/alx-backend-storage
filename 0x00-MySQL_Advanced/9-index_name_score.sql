-- 9. Indexing the first letter of 'name' and 'score'
-- Requirements:
-- - Import the table dump: names.sql.zip
-- - Only the first letter of 'name' AND 'score' must be indexed
-- Context: Index is not the solution for any performance issue, but well used, it’s really powerful!

-- Import the table dump
-- Note: Adjust the path to the names.sql file as needed
SOURCE /path/to/names.sql;

-- Create an index idx_name_first_score on the first letter of 'name' and 'score'
CREATE INDEX idx_name_first_score ON names (LEFT(name, 1), score);
