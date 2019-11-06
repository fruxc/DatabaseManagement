SET SERVEROUTPUT ON;
DECLARE
X NUMBER;
BEGIN
Select (expectedincome/nvl(netincome,0)) into x from BATCH_02 where BCODE=103;
EXCEPTION 
   WHEN ZERO_DIVIDE THEN
      dbms_output.put_line('DIVIDING BY ZERO PLEASE CHECK THE VALUES AGAIN'); 
END;
/