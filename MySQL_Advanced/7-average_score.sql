-- Compute the average score for a student and update the users table with the average score.
DELIMITER $
CREATE PROCEDURE ComputeAverageScoreForUser (IN user_id int)
BEGIN
    DECLARE avg_score float;
    SELECT AVG(score) INTO avg_score FROM corrections WHERE corrections.user_id = user_id;
    UPDATE users SET average_score = avg_score WHERE users.id = user_id;
END;
$