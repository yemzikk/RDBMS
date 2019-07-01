create Table zsalesman(
  sman_no number(3),
  s_name varchar(20) not null,
  place varchar(15),
  phone number(10) unique,
  constraint pkol primary key(sman_no)
);
insert into
  zsalesman
values(101, 'Raju', 'Kozhikkode', 1212121212);
insert into
  zsalesman
values(102, 'Rama', 'Kochi', 2212121212);
insert into
  zsalesman
values(103, 'Ram', 'Kottayam', 3212121212);
insert into
  zsalesman
values(104, 'Rama', 'Kuttiady', 4212121212);
insert into
  zsalesman
values(105, 'Rajan', 'Kallachi', 5212121212);
create Table zsalesorder (
    order_no number(3) primary key,
    order_date date not null,
    del_type varchar(2) constraint ch1 check (del_type in ('P', 'F')),
    sman_no number(3),
    order_status varchar(15) constraint ch2 check (
      order_status in (
        'in process',
        'fullfilled',
        'back order',
        'cancelled'
      )
    ),
    constraint fkol foreign key (sman_no) references zsalesman(sman_no)
  );
insert into
  zsalesorder
values(201, '18-jan-2019', 'P', 101, 'in process');
insert into
  zsalesorder
values(202, '11-feb-2019', 'F', 101, 'cancelled');
insert into
  zsalesorder
values(203, '01-jan-2019', 'P', 103, 'fullfilled');
insert into
  zsalesorder
values(204, '19-mar-2019', 'F', 104, 'back order');
insert into
  zsalesorder
values(205, '08-apr-2019', 'F', 102, 'cancelled');
alter table
  zsalesman drop constraint pkol;
alter table
  zsalesorder drop constraint fkol;
alter table
  zsalesorder drop constraint ch1;
alter table
  zsalesorder drop constraint ch2;
alter table
  zsalesman
add
  primary key (sman_no);
alter table
  zsalesorder
add
  constraint ch31 check (
    del_type in ('P', 'F')
    AND order_status in (
      'in process',
      'fullfilled',
      'back order',
      'cancelled'
    )
  );
