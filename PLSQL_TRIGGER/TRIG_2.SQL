SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER EMP_2
AFTER INSERT ON EMP_02
FOR EACH ROW

DECLARE

BEGIN
IF(:new.EMPID>100) THEN
    raise_application_error(-20002,'EMP ID CANNOT BE MORE THAN 2 DIGITS');
END IF;
END;
/