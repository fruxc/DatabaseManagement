DECLARE
N NUMBER;
BEGIN
N := &N;
DBMS_OUTPUT.PUT_LINE('FACTORIAL OF '|| N);
DBMS_OUTPUT.PUT_LINE(FACTORIAL_02(N));
END;
/