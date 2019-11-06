SET SERVEROUTPUT ON;
DECLARE
cursor c1 is select cname nm from deposit_02 order by amount desc ;
z c1%rowtype;
BEGIN
open c1;
fetch c1 into z;
while(c1%found)loop
    if(c1%rowcount = 4)then
        dbms_output.put_line(z.nm);
    end if;
    fetch c1 into z;
end loop;
close c1;
end;
/
