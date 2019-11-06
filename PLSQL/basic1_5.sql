set serveroutput ON;
DECLARE
name varchar2(100);

BEGIN
select bname into name from branch_02 where city='BANGLORE';
DBMS_OUTPUT.put_line(name);
END;