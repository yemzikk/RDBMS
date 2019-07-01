create or replace table zproduct ( product_code  number(3) primary key,product_name varchar(10), catrgory varchar(5), quantity number(5),price number(6));

insert into zproduct values (101,'Mixture','BAK', 1200,220);
insert into zproduct values (102,'Soap','GROC', 500,22);
insert into zproduct values (103,'Pen','STAT', 150,10);
insert into zproduct values (104,'NoteBook','STAT', 250,35);
insert into zproduct values (105,'Sweets','BAK', 2000,5);

select * from zproduct order by product_name desc;
select * from zproduct where price between 20 and 50;
select * from zproduct where catrgory = 'STAT' ;
select * from zproduct where quantity > 500 or quantity<100 ;
select * from zproduct where product_name like 'S%';
select * from zproduct where catrgory not in ('GROC');
select * from zproduct where product_name like '_S%' and catrgory in ('BAK');
