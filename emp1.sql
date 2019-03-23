create table zemployee_one (employee_id varchar(5), employee_name varchar(20),bp number(6));

insert into zemployee_one values('&employee_id','&employee_name','&bp');

select * from zemployee_one;

set serveroutput on;
declare
DA number;
PF number;
G_salary number;
NET_salary number;
ANN_salary number;
Tax number;
emprecord zemployee_one %rowtype;
cursor fetch_emp is select employee_id,employee_name,bp from zemployee_one;
begin
open fetch_emp;
dbms_output.put_line('SALARY REPORT');
dbms_output.put_line('......');
loop
fetch fetch_emp into emprecord;
DA:=emprecord.BP*.4;
PF:=emprecord.BP*.1;
G_salary:=emprecord.bp+DA;
NET_salary:=G_salary-PF;
ANN_salary:=NET_salary*12;
IF ANN_salary<10000 then
Tax:=0;
else if ANN_salary<150000 then
Tax:=(ANN_salary-100000)*.1;
else if ANN_salary<250000 then
Tax:=(ANN_salary-150000)*.2;
else
Tax:=(ANN_salary-250000)*.5;
end if;
end if;
end if;
dbms_output.put_line('employee_id:'||emprecord.employee_id);
dbms_output.put_line('employee_name:'||emprecord.employee_name);
dbms_output.put_line('bp:'||emprecord.bp);
dbms_output.put_line('DA:'||DA);
dbms_output.put_line('PF:'||PF);
dbms_output.put_line('G_salary:'||G_salary);
dbms_output.put_line('NET_salary:'||NET_salary);
dbms_output.put_line('ANN_salary:'||ANN_salary);
dbms_output.put_line('Tax:'||Tax);
dbms_output.put_line('______________________________');
exit when fetch_emp %notfound;
end loop;
end;
/
