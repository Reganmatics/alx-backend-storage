-- Task 6. Add Bonus
CREATE PROCEDURE AddBonus (IN student_id INT, IN bonus INT)
BEGIN
    UPDATE students
    SET bonus = bonus + bonus
    WHERE id = student_id;
END
