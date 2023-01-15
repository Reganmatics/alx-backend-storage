-- Avearage weighted score
CREATE PROCEDURE ComputeAverageWeightedScoreForUser (IN user_id INT)
BEGIN
    DECLARE avg_weighted_score DECIMAL(5,2);
    SELECT AVG(score * weight) INTO avg_weighted_score
    FROM scores
    WHERE user_id = user_id;

    UPDATE users
    SET average_weighted_score = avg_weighted_score
    WHERE id = user_id;
END
