SET SERVEROUTPUT ON

BEGIN
    DBMS_OUTPUT.PUT_LINE('--- B1 fn_annual_salary ---');
    DBMS_OUTPUT.PUT_LINE('Emp 101: ' || fn_annual_salary(101));
    DBMS_OUTPUT.PUT_LINE('Emp 999 (missing): ' || NVL(TO_CHAR(fn_annual_salary(999)), 'NULL'));

    DBMS_OUTPUT.PUT_LINE('--- B2 fn_years_of_service ---');
    DBMS_OUTPUT.PUT_LINE('Emp 103: ' || fn_years_of_service(103));
    DBMS_OUTPUT.PUT_LINE('Emp 106 (future hire): ' || NVL(TO_CHAR(fn_years_of_service(106)), 'NULL'));

    DBMS_OUTPUT.PUT_LINE('--- B3 fn_calculate_tax ---');
    DBMS_OUTPUT.PUT_LINE('50,000  -> ' || fn_calculate_tax(50000));
    DBMS_OUTPUT.PUT_LINE('85,000  -> ' || fn_calculate_tax(85000));
    DBMS_OUTPUT.PUT_LINE('250,000 -> ' || fn_calculate_tax(250000));
    DBMS_OUTPUT.PUT_LINE('-1      -> ' || NVL(TO_CHAR(fn_calculate_tax(-1)), 'NULL'));

    DBMS_OUTPUT.PUT_LINE('--- B4 fn_dept_name ---');
    DBMS_OUTPUT.PUT_LINE('Dept 10:   ' || fn_dept_name(10));
    DBMS_OUTPUT.PUT_LINE('Dept 99:   ' || fn_dept_name(99));
    DBMS_OUTPUT.PUT_LINE('Dept NULL: ' || fn_dept_name(NULL));
END;
/