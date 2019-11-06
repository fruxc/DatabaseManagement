SET SERVEROUTPUT ON;
DECLARE
cursor c1 is select * from customer_02;
z c1%rowtype;
counter number;
BEGIN
counter := 0;
for z in c1 loop
    counter:=counter+1;
end loop;
dbms_output.put_line('Count = '||counter);
end;
/