-- Create the stored procedure ComputeAverageScoreForUser
DELIMITER //

CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
    -- Declare variables for computing and storing average score
    DECLARE total_score DECIMAL(10,2);
    DECLARE total_subjects INT;
    DECLARE average_score DECIMAL(10,2);

    -- Compute total score and total subjects for the given user_id
    SELECT SUM(score) INTO total_score, COUNT(*) INTO total_subjects
    FROM scores
    WHERE user_id = user_id;

    -- Check if total_subjects is greater than 0 to avoid division by zero
    IF total_subjects > 0 THEN
        -- Compute average score
        SET average_score = total_score / total_subjects;

        -- Insert or update the average score for the user
        INSERT INTO average_scores (user_id, average_score)
        VALUES (user_id, average_score)
        ON DUPLICATE KEY UPDATE average_score = average_score;
        
        -- Display a success message
        SELECT CONCAT('Average score computed and stored for user ', user_id) AS message;
    ELSE
        -- Display a message if the user has no scores
        SELECT CONCAT('User ', user_id, ' has no scores.') AS message;
    END IF;
END //

DELIMITER ;
