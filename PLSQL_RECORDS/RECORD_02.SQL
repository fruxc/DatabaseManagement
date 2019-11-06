declare
type college_rec is RECORD (ADDRESS varchar2(50));
x college_rec;
begin
x.address := '&address';
UPDATE COLLEGE_02
SET address = x.address
WHERE name='SPIT';
end;
/