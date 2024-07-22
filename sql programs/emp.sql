create database empl;
use empl;
create table employee_details(e_id int,e_name varchar(10),e_domain varchar(10),e_age int,e_email varchar(20));
create table airport_details(p_id int,p_name varchar(10),p_domain varchar(10),p_age int,p_email varchar(20));
select * from employee_datils;
select * from airport_details;
show tables;

alter table employee_details add column e_phoneNo bigint,add column e_address varchar(20),add column e_gender varchar(10),add column e_adhaarNo bigint,add column e_birthDate bigint;
alter table employee_datils drop column e_gender,drop column e_birthdate;
alter table employee_datils rename column e_name to employee_name,rename column e_id to employee_id,rename column e_domain to employee_domain,rename column e_age to employee_age,rename column e_email to employee_email;
alter table employee_datils modify column e_name bigint,modify column e_address bigint,modify column e_gender bigint,modify column e_emial bigint;
select * from employee_datils;
desc employee_datils;

alter table airport_details add column e_phoneNo bigint,add column p_cast varchar(20),add column p_gender varchar(10),add column p_adhaarNo bigint,add column p_birthDate bigint;
alter table airport_details drop column p_domain,drop column p_cast;
alter table airport_details rename column p_name to passenger_name,rename column p_id to passenger_id,rename column p_cast to passenger_cast,rename column p_age to passenger_age,rename column p_email to passenger_email;
alter table airport_datails modify column p_name bigint,modify column p_address bigint,modify column p_gender bigint,modify column p_emial bigint;

select * from airport_datails;
desc airport_datails;