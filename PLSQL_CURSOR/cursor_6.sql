SET SERVEROUTPUT ON;
DECLARE
cursor c1 is select amount am from deposit_02 where bname = 'VIRAR';
z c1%rowtype;
sumamount number;
BEGIN
sumamount := 0;
open c1;
fetch c1 into z;
while(c1%found)loop
    sumamount:=sumamount+z.am;
    fetch c1 into z;
end loop;
dbms_output.put_line('Total Amount = '||sumamount);
close c1;
end;
/