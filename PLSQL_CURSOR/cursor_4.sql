SET SERVEROUTPUT ON;
DECLARE
cursor c1 is select * from customer_02;
z c1%rowtype;
counter number;
BEGIN
counter := 0;
open c1;
fetch c1 into z;
while(c1%found)loop
    counter:=counter+1;
    fetch c1 into z;
end loop;
dbms_output.put_line('Count = '||counter);
close c1;
end;
/