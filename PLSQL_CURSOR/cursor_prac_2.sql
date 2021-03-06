SET SERVEROUTPUT ON;
DECLARE
cursor c1 is select AMOUNT from DEPOSIT_02 WHERE BNAME IN (SELECT BNAME FROM BRANCH_02 WHERE CITY='NAGPUR') FOR UPDATE;
Z C1%ROWTYPE;
A NUMBER;
BEGIN
OPEN C1;
A := 0;
FETCH C1 INTO Z;
while(C1%found)loop
    IF Z.AMOUNT<10000 AND Z.AMOUNT>=5000 THEN
        A := (Z.AMOUNT*12)/10;
        UPDATE DEPOSIT_02 SET AMOUNT = A WHERE CURRENT OF C1;
    ELSIF Z.AMOUNT < 5000 THEN
        A := (Z.AMOUNT*112)/100;
        UPDATE DEPOSIT_02 SET AMOUNT = A WHERE CURRENT OF C1;
    END IF;
    FETCH C1 INTO Z;
END LOOP;
CLOSE C1;
END;
/