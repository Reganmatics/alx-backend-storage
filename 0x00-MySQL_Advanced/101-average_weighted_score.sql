-- Task 13. Average weighted score
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
    DECLARE avg_weighted_score DECIMAL(5,2);
    SELECT AVG(score * weight) INTO avg_weighted_score
    FROM scores;

    UPDATE users
    SET average_weighted_score = avg_weighted_score;
END
