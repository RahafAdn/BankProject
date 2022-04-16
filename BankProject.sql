# DDL - create
create database bank;

create table customer(
id varchar(10) primary key,
username varchar(15),
email varchar(20) unique,
password varchar(25),
role varchar(10) check(role='admin' or role='user')
);
create table account(
id varchar(10) primary key,
balance integer,
foreign key(id) references customer(id)
);
create table loan(
id varchar(10) primary key,
loanAmount int default 100,
isPaid boolean default false,
account_id varchar(10),
foreign key (account_id) references account(id)
);

# DDL - Alter (add , drop)
alter table customer add column phoneNumber varchar(10);
alter table customer drop column phoneNumber;

# DDL - Drop (database , table)
drop database bank;
drop table loan;

# DDL - Truncate
truncate table lean;

# DQL - select
select * from customer;
select username, password from customer;
select* from account;
select* from loan;

# DML - Insert
insert into customer values ('1','saleh','s@s.com','123','admin');
insert into customer values ('2','ail','a@a.com','123','admin');

insert into account values('1',0);
insert into account values('2',100);

insert into loan values('123',100,false,'1');
insert into loan values('124',500,false,'1');

# DML - Update
update customer set password='8888' where id ='2';

# DML - Delete
delete from loan where id ='123';


