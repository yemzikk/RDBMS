create table zele_bill(cus_no number(11),cus_name varchar(20),unit number(5),bill_amount number default null);

  insert into zele_bill (cus_no,cus_name) values('1','Prajul');
  insert into zele_bill (cus_no,cus_name) values('2','Nihal');
  insert into zele_bill (cus_no,cus_name) values('3','Nishad');
  insert into zele_bill (cus_no,cus_name) values('4','Salma');
  insert into zele_bill (cus_no,cus_name) values('5','Fathima');

select * from zele_bill;

create function find_amount(cus_no IN int,unit IN int)return number AS;
  bill_amount number:=0;
  rate number:=4;
  begin
  amount:=cunit*rate;
  update zele_bill set zele_bill.unit=unit,zele_bill.bill_amount=amount where zele_bill.cus_no=cus_no;
  return amount;
  end;
  /

declare
cus_no int;
unit int;
bill_amount number;
begin
cus_no:=&cus_no;
unit:=&unit;
bill_amount:= find_amount(cus_no,unit);
dbms_output.put_line('bill_amount'||bill_amount||'Updated');
end;
/
