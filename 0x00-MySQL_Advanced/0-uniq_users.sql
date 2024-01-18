-- 0. We are all unique!
-- mandatory
-- Write a SQL script that creates a table users following these requirements:
--
-- With these attributes:
-- id, integer, never null, auto increment and primary key
-- email, string (255 characters), never null and unique
-- name, string (255 characters)
-- If the table already exists, your script should not fail
-- Your script can be executed on any database
-- Context: Make an attribute unique directly in the table schema will enforce your business rules and avoid bugs in your application

-- Create the users table if it does not exist
CREATE TABLE IF NOT EXISTS users (
	    id INT AUTO_INCREMENT PRIMARY KEY,
	    email VARCHAR(255) NOT NULL UNIQUE,
	    name VARCHAR(255)
	);
