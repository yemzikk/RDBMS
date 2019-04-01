set serveroutput on;

-- TABLE CREATION SECTION
CREATE TABLE zstudent_mark(reg_no NUMBER(3),Name VARCHAR(10),m1 NUMBER(2),m2 NUMBER(2),m3 NUMBER(2),m4 NUMBER(2),Total NUMBER(3) NULL,AVG_SCORE NUMBER(3) NULL,GRADE VARCHAR(1)NULL);
INSERT INTO zstudent_mark (reg_no,Name,m1,m2,m3,m4)VALUES('&reg_no','&Name','&m1','&m2','&m3','&m4');
select * from zstudent_mark;

declare
rno zstudent_mark.reg_no %type;
name zstudent_mark.Name %type;
mk1 zstudent_mark.m1 %type;
mk2 zstudent_mark.m2 %type;
mk3 zstudent_mark.m3 %type;
mk4 zstudent_mark.m4 %type;
tot zstudent_mark.Total %type;
avgs zstudent_mark.AVG_SCORE %type;
gra zstudent_mark.GRADE %type;
cursor c1 is select reg_no,m1,m2,m3,m4 from zstudent_mark;
begin
open c1;
loop
fetch c1 into rno,mk1,mk2,mk3,mk4;
tot:=mk1+mk2+mk3+mk4;
avgs:=tot/4;
if avgs>=90 then
  gra:='A';
elsif avgs>=75 then
  gra:='B';
elsif avgs>=60 then
  gra:='C';
elsif avgs>=50 then
  gra:='D';
else
  gra:='F';
end if;
update zstudent_mark set Total= tot,AVG_SCORE=avgs,GRADE=gra where reg_no=rno;
exit when c1 %notfound;
end loop;
end;
/
