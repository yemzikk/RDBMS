create table zele_bill(cus_no number(11),cus_name varchar(20),unit number(5)NULL,bill_amount number NULL);

  insert into uy zele_bill (cus_no,cus_name) values('1','Prajul');
  insert into zele_bill (cus_no,cus_name) values('2','Nihal');
  insert into zele_bill (cus_no,cus_name) values('3','Nishad');
  insert into zele_bill (cus_no,cus_name) values('4','Salma');
  insert into zele_bill (cus_no,cus_name) values('5','Fathima');

select * from zele_bill;

create or replace function find_amount(cno in int,cunit in int) return int as
bill_amount1 int:=0;
  rate constant int:=4;
  begin
  bill_amount1:=cunit*rate;
  update zele_bill set zele_bill.unit=cunit,zele_bill.bill_amount=bill_amount1 where zele_bill.cus_no=cno;
  return bill_amount1;
  end;
  /

set serveroutput on;
declare
cus_no int;
unit int;
bill_amount number;
begin
cus_no:=&cus_no;
unit:=&unit;
bill_amount:= find_amount(cus_no,unit);
dbms_output.put_line('+---------------------------------+');
dbms_output.put_line('| Bill Amount: '||bill_amount||', Table Updated |');
dbms_output.put_line('+---------------------------------+');
end;
/
