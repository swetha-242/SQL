create database emplo;
use emplo;
create table employeee_details(e_id int,e_name varchar(10),e_domain varchar(30),e_age int,e_email varchar(20));
select * from employeee_details;

insert into employeee_details values(1,'ragini','software trainee',24,'ragini@gmail.com');
insert into employeee_details values(2,'riya','software engineer',25,'riya@gmail.com');
insert into employeee_details values(3,'shreya','developer',23,'shreya@gmail.com');
insert into employeee_details values(4,'kiya','tester',28,'kiya@gmail.com');
insert into employeee_details values(5,'shamitha','software trainee',23,'shamitha@gmail.com');
insert into employeee_details values(6,'sharmila','HR',23,'sharmila@gmail.com');
insert into employeee_details values(7,'gupthachar','devops engineer',22,'gupthachar@gmail.com');
insert into employeee_details values(8,'shantha','business',29,'shantha@gmail.com');
insert into employeee_details values(9,'shamithaa','software trainee',23,'shamithaa@gmail.com');
insert into employeee_details values(10,'shankar','web developer',30,'shankar@gmail.com');
select * from employeee_details;
select * from employeee_details where e_age=24;
select * from employeee_details where e_age=23;
select e_email from employeee_details where e_id=3;
select e_email from employeee_details where e_age=23;

create table airport_details(p_id int,p_name varchar(10),p_number varchar(10),p_age int,p_email varchar(20));