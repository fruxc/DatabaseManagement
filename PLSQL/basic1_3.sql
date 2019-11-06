set serveroutput ON;
DECLARE
a number(15);
b number(15);
c number(15);

BEGIN
a:=&a;
b:=&b;
c:=&c;

IF a>b AND a>c THEN
	DBMS_OUTPUT.put_line('A is greatest!');
ELSIF b>a AND b>c THEN
	DBMS_OUTPUT.put_line('B is greatest!');
ELSIF c>a AND c>b THEN
	DBMS_OUTPUT.put_line('C is greatest!');
ELSE
	DBMS_OUTPUT.put_line('ALL ARE EQUAL!');
END IF;
END;