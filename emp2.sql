create table zemployee2 (emp_name varchar(20),city varchar(10));
insert into zemployee2 values ('Prajul','Vadakara');
insert into zemployee2 values ('Nihal','Memunda');
insert into zemployee2 values ('Salma','Thiruvall');
insert into zemployee2 values ('Ziyad','Kuttiady');
insert into zemployee2 values ('Nishad','Ayancheri');
insert into zemployee2 values ('Fathima','Valliad');
insert into zemployee2 values ('Nabeel','Kallachi');
select * from zemployee2;

create table zworks (emp_name varchar(20),company_name varchar(10),salary number(8));
insert into zworks values('Prajul','ITC',100000);
insert into zworks values('Nihal','Q-Net',70000);
insert into zworks values('Ziyad','Q-Net',70000);
insert into zworks values('Salma','Facebook',90000);
insert into zworks values('Nishad','Uni Liver',100000);
insert into zworks values('Fathima','Catberry',100000);
insert into zworks values('Nabeel','Nike',100000);
select * from zworks;

create table company (company_name varchar (10),City varchar(10));
insert into company values('ITC','Vadakara');
insert into company values('Q-Net','Memunda');
insert into company values('Q-Net','Canada');
insert into company values('Facebook','Nadapuram');
insert into company values('Uni Liver','Ayancheri');
insert into company values('Catberry','Valliad');
insert into company values('Nike','Kallachi');
select * from company;

create table managers (emp_name varchar(20),manager_name varchar(20));
insert into managers values('Nishad','APJ Abdul Kalam');
insert into managers values('Nabeel','Canyaman');
insert into managers values('Prajul','Midu Mohan');
insert into managers values('Nihal','Safiya');
insert into managers values('Ziyad','Hitesh Choudhary');
insert into managers values('Salma','Mark Zukerburg');
insert into managers values('Fathima','Salma');
select * from managers;

select emp_name from zworks where company_name = 'ITC';
select emp_name,city from zemployee2 where emp_name in (select emp_name from zworks where company_name='Nike');
select emp_name,city from zemployee2 where emp_name in (select emp_name from zworks where company_name = 'Q-Net' and salary > 60000);
select emp_name from zemployee2 where city in (select City from company);
select emp_name from zworks where company_name not in ('Nike');
select company_name from zworks group by company_name having count(emp_name)>=all(select count (emp_name) from zworks group by company_name);
