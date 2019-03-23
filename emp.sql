create table zemployee (employee_id varchar(5), employee_name varchar(20),salary number(6), department varchar(10),age number(2));

insert into zemployee values('&employee_no','&employee_name','&salary','&department','&age');

select count(employee_id) from zemployee;

select department,max(age) from zemployee group by department;

select department, avg(salary) from zemployee group by department;

select min(salary) from zemployee;

select max(salary) from zemployee where department='Sales';
