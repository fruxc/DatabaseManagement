set serveroutput ON;
DECLARE
i number(15);
s number(15);

BEGIN
s:=0;

FOR i IN 1..5
 LOOP
  s:=s+i;
 END LOOP;
	DBMS_OUTPUT.put_line('Sum of first five numbers = '||s);

END;