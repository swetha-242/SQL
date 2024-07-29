create database collegeInformation;
use collegeInformation;

create table college_info(c_name varchar(20),c_price bigint , c_id int not null unique, no_of_students int,constraint no_of_students_m check(no_of_students>=0),students_id int primary key);

alter table college_info add constraint c_name_uni unique(c_name);

alter table college_info drop index c_name_uni;

insert into college_info values('bit',10,1,10,101);
insert into college_info values('mit',11,2,11,102);
insert into college_info values('pesit',12,3,12,103);
insert into college_info values('jnnc',13,4,13,104);
insert into college_info values('ait',14,5,14,105);

select * from college_info;

alter table college_info add constraint no_of_students check(no_of_students>5 and no_of_students<=2000);

alter table college_info add constraint c_name_uni unique(c_name);

alter table college_info drop constraint no_of_students;

alter table college_info drop primary key;