set serveroutput ON;
DECLARE
a number(15);
b number(15);
c number(15);

BEGIN
b:=&b;
a:=&a;
c:=a+b;
DBMS_OUTPUT.put_line('Sum of two numbers = ');
DBMS_OUTPUT.put_line(c);
END;