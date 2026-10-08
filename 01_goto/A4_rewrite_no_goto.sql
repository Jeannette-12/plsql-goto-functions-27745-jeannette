SET SERVEROUTPUT ON

DECLARE
    v_emp_id     employees.emp_id%TYPE := 104;
    v_salary     employees.salary%TYPE;
    v_new_salary NUMBER;
BEGIN
    SELECT salary INTO v_salary FROM employees WHERE emp_id = v_emp_id;
    DBMS_OUTPUT.PUT_LINE('Employee ' || v_emp_id || ' current salary: ' || v_salary);

    IF v_salary < 50000 THEN
        v_new_salary := v_salary * 1.10;
        DBMS_OUTPUT.PUT_LINE('Low band: 10% raise -> ' || v_new_salary);
    ELSIF v_salary < 150000 THEN
        v_new_salary := v_salary * 1.05;
        DBMS_OUTPUT.PUT_LINE('Middle band: 5% raise -> ' || v_new_salary);
    ELSE
        v_new_salary := v_salary;
        DBMS_OUTPUT.PUT_LINE('High band: no raise -> ' || v_new_salary);
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary review complete.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
END;
/