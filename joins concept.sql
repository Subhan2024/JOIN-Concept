create table students(
stdId int not null unique,
name varchar (20) not null,
gender varchar(10) not null,
dob date not null,
city varchar(20) default "KARACHI"
);

insert into students values(05, "zakir", "Male", "2005-01-18","multan"),
(04, "rehman", "Male", "2005-01-18", "lahore");

alter table students add email varchar(20) not null;
alter table students drop city;
alter table students rename std;
alter table emp modify gender varchar(20);
alter table std modify name varchar(50);
alter table std drop gender;
alter table std add gender varchar(15) not null;
SELECT * FROM employees where employeeID = 1002;
SELECT * FROM employees join emp on employees.employeeID = emp.id;

use db;
create table customer(
customerId int not null unique,
FirstName varchar(20) unique,
Lastname varchar(20) unique,
country varchar(30) unique,
Age int,
Gender varchar(8)
);
insert into customer values(214431, 'jack', 'Swanson', 'Germany', 34, 'Male');
insert into customer values(956437, 'Joe', 'Voight', 'France', 22, 'Female');
insert into customer values(111278, 'Christan', 'Gale', 'Italy', 19, 'Male');
insert into customer values(897867, 'Karl', 'Davis', 'Switzerland', 22, 'Male');
insert into customer values(789023, 'Berry', 'Chase', 'Netherland', 24, 'Female');


use db;
create table orderdata(
OrderId int,
customerId int,
status varchar(20),
Amount int,
foreign key orderdata(customerId) references customer(customerId)
);

insert into orderdata values(567834, 214431, 'paid', 10000);
insert into orderdata values(113425, 956437, 'unpaid', 6780);
insert into orderdata values(564771, 564721, 'unpaid', 12000);
insert into orderdata values(999982, 789023, 'paid', 4500);
insert into orderdata values(453110, 897867, 'paid', 2300);


select * from db.orderdata join db.customer on orderdata.customerId = customer.customerId;
select * from db.orderdata right join db.customer on orderdata.customerId = customer.customerId;
select * from db.orderdata left join db.customer on orderdata.customerId = customer.customerId;
