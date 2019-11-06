SET SERVEROUTPUT ON;
DECLARE
cursor c1(branch varchar) is select CNAME cn, AMOUNT am from deposit_02 where BNAME = branch;
z c1%rowtype;
BEGIN
open c1('VIRAR');
fetch c1 into z;
while(c1%found)loop
    dbms_output.put_line(z.cn ||' '||z.am);
    fetch c1 into z;
end loop;
close c1;
end;
/
