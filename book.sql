 create table zphonebook(name varchar(20),mobno number(10));

insert into zphonebook values('&name',&mobno);
select * from zphonebook;

create table del_zphonebook(del_name varchar(20),del_mobno number(10));

create or replace trigger del_trigger after delete on zphonebook for each row
begin
insert into del_zphonebook values ( :old.name, :old.mobno );
end;
/

set serveroutput on;

delete from zphonebook where name='Salma';
select * from del_zphonebook;
