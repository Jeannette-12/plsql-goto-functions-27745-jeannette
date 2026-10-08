SET SERVEROUTPUT ON

-- PART 1: ILLEGAL. A GOTO cannot jump INTO an IF block.
BEGIN
    GOTO inside_block;
    IF 1 = 1 THEN
        <<inside_block>>
        DBMS_OUTPUT.PUT_LINE('Reached inside the IF block');
    END IF;
END;
/

-- PART 2: FIX. Put the label at the same block level as the GOTO.
BEGIN
    GOTO target_label;
    DBMS_OUTPUT.PUT_LINE('This line is skipped');

    <<target_label>>
    DBMS_OUTPUT.PUT_LINE('Reached the label correctly');
END;
/