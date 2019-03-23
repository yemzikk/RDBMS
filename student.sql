create table zstudent (add_no number(5), student_name varchar(20),DOB date, sex varchar(1));
create table test (test_no number(5), test_name varchar(2),DOB date, sex varchar(1));
insert into test values('&test_no','&test_name','&DOB','&sex');
insert into zstudent values('&add_no','&student_name','&DOB','&sex');

select * from zstudent;

select student_name,to_char(DOB,'day') as "DAY" from zstudent;
select student_name,to_char(DOB,'Month') as "Month" from zstudent;
