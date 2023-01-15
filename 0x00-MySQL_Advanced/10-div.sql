-- Task 10. Safe divide
CREATE FUNCTION SafeDiv(dividend FLOAT, divisor FLOAT)
RETURNS FLOAT
BEGIN
    IF divisor = 0 THEN
        RETURN 0;
    ELSE
        RETURN dividend / divisor;
    END IF;
END

