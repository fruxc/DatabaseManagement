SET SERVEROUTPUT ON;
DECLARE
cursor c1 is select * from customer_02;
z c1%rowtype;
counter number;
BEGIN
counter := 0;
open c1;
fetch c1 into z;
loop
    counter:=counter+1;
    fetch c1 into z;
    EXIT WHEN c1%NOTFOUND;
end loop;
dbms_output.put_line('Count = '||counter);
close c1;
end;
/