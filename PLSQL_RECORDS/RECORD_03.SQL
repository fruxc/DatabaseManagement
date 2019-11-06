SET SERVEROUTPUT ON;
DECLARE
type rec is RECORD(COLLEGEID number, NAME varchar2(25), ADDRESS varchar2(50));
x rec;
CURSOR c1 IS SELECT * FROM COLLEGE_02;
BEGIN
FOR x IN c1 LOOP
    DBMS_OUTPUT.put_line('College ID: ' || x.collegeid);
    DBMS_OUTPUT.put_line(' Name: ' || x.name );
    DBMS_OUTPUT.put_line(' Address: ' || x.address);
END LOOP;
END;
/