SET SERVEROUTPUT ON;
DECLARE
cursor c1 is select * from STUDENT_P_02 ORDER BY MARKS DESC;
z c1%rowtype;
c NUMBER;
BEGIN
open c1;
c := 0;
fetch c1 into z;
while(c1%found)loop
    INSERT INTO TEMP_02 VALUES (z.SID,z.SNAME,z.MARKS);
    c := c + 1;
    EXIT WHEN c = 5;
    fetch c1 into z;
end loop;
close c1;
end;
/