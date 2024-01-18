-- 11. Creating the need_meeting view
-- Requirements:
-- - The view need_meeting should return all students' names when:
--   - Their scores are under (strict) 80
--   - AND they have no last_meeting date OR more than a month

-- Creating the view need_meeting
CREATE VIEW need_meeting AS
SELECT name
FROM students
WHERE score < 80 AND (last_meeting IS NULL OR last_meeting < ADDDATE(CURDATE(), INTERVAL -1 MONTH));
