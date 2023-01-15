-- Task 7. Average score
CREATE PROCEDURE ComputeAverageScoreForUser (IN student_id INT)
BEGIN
    DECLARE avg_score DECIMAL(5,2);
    SELECT AVG(score) INTO avg_score
    FROM scores
    WHERE student_id = student_id;

    UPDATE students
    SET average_score = avg_score
    WHERE id = student_id;
END
