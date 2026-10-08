SET SERVEROUTPUT ON

DECLARE
    v_num NUMBER := 15;
BEGIN
    IF v_num > 0 THEN
        GOTO is_positive;
    ELSIF v_num < 0 THEN
        GOTO is_negative;
    ELSE
        GOTO is_zero;
    END IF;

    <<is_positive>>
    DBMS_OUTPUT.PUT_LINE(v_num || ' is POSITIVE');
    GOTO finish;

    <<is_negative>>
    DBMS_OUTPUT.PUT_LINE(v_num || ' is NEGATIVE');
    GOTO finish;

    <<is_zero>>
    DBMS_OUTPUT.PUT_LINE(v_num || ' is ZERO');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Classification complete.');
END;
/