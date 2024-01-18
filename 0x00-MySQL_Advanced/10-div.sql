-- 10. Creating the SafeDiv function
-- Requirements:
-- - You must create a function
-- - The function SafeDiv takes 2 arguments:
--     a, INT
--     b, INT
-- - And returns a / b or 0 if b == 0
DELIMITER //

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS DECIMAL(10, 4)
BEGIN
    DECLARE result DECIMAL(10, 4);

    IF b = 0 THEN
        SET result = 0;
    ELSE
        SET result = a / b;
    END IF;

    RETURN result;
END //

DELIMITER ;
