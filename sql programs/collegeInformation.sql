create database collegeInformation;
use collegeInformation;

create table cllg_info(c_name varchar(20),c_price bigint , c_id int not null unique,student_name varchar(20), overall_of_students int,constraint overall_of_students_m check(overall_of_students>=0),students_id int primary key);

alter table cllg_info add constraint c_name_uni unique(c_name);

alter table cllg_info drop index c_name_uni;

insert into cllg_info values('GSS',10,1,'sindu',10,101);
insert into cllg_info values('RV',11,2,'maya',11,102);
insert into cllg_info values('PESITM',12,3,'payal',12,103);
insert into cllg_info values('DVS INDEPENDENT',13,4,'siya',13,104);
insert into cllg_info values('JNNCE',14,5,'chiru',14,105);

select * from cllg_info;

alter table cllg_info add constraint overall_of_students check(overall_of_students>5 and overall_of_students<=2000);

alter table cllg_info add constraint c_name_uni unique(c_name);

alter table cllg_info drop constraint t0tal_of_students;

alter table cllg_info drop primary key;