create table zclient_master(Cl_No number(3), Cl_Name varchar(10),place varchar(10));

insert into zclient_master values('&Cl_No', '&Cl_Name', '&place');

set serveroutput on;

declare
Cl_Num number(5);
a number(2);
begin
a:=&a;
loop
Cl_Num:=&Cl_Num;
delete from zclient_master where Cl_No=Cl_Num;
a := a-1;
exit when a=0;
end loop;
end;
/

select * from zclient_master;
