DECLARE 
   N NUMBER; 
   RES NUMBER;
CREATE OR REPLACE FUNCTION FACT_R_02(X NUMBER) 
RETURN NUMBER
IS
   F NUMBER; 
BEGIN 
   IF X=0 THEN 
      F := 1; 
   ELSE 
      F := X * FACT_R_02(X-1); 
   END IF; 
RETURN F; 
END FACT_R_02;

BEGIN 
   N:= &N;
   RES := FACT_R_02(N); 
   dbms_output.put_line(' Factorial '|| N || ' is ' || RES); 
END; 
/