-- Assumed brackets: 0-60,000 = 0%; 60,001-100,000 = 20% of the excess over 60,000;
-- above 100,000 = 8,000 + 30% of the excess over 100,000
CREATE OR REPLACE FUNCTION fn_calculate_tax (p_salary IN NUMBER)
RETURN NUMBER
IS
BEGIN
    IF p_salary IS NULL OR p_salary < 0 THEN
        RETURN NULL;
    ELSIF p_salary <= 60000 THEN
        RETURN 0;
    ELSIF p_salary <= 100000 THEN
        RETURN (p_salary - 60000) * 0.20;
    ELSE
        RETURN 8000 + (p_salary - 100000) * 0.30;
    END IF;
END fn_calculate_tax;
/
SHOW ERRORS