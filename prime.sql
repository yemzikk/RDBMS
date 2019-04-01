set serveroutput on;
declare
n number;
i number;
counter number;
begin
n:=&n;
i:=1;
counter:=0;
if n=1 then
dbms_output.put_line('1 is either Prime Nor Composite');
elsif n=2 then
dbms_output.put_line('2 is even Prime');
else
for i in 1..n loop
if mod(n,i)=0 then
counter:=counter+1;
end if;
end loop;
end if;
if counter=2 then
dbms_output.put_line(n||' is a Prime Number');
else
dbms_output.put_line(n||' is Not a Prime Number');
end if;
end;
/
