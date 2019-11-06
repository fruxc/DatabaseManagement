set serveroutput ON;
DECLARE
word varchar2(100);
a number(15);

BEGIN
word:='&name';
a:=&number;
DBMS_OUTPUT.put_line(word);
DBMS_OUTPUT.put_line(a);

END;