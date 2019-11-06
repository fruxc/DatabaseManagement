SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER EMP_1
AFTER INSERT ON EMP_02
FOR EACH ROW

DECLARE

BEGIN
IF(:new.salary<10000) THEN
    raise_application_error(-20001,'Salary cant be less than 10000');
END IF;
END;
/