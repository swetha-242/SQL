create database hospitalInformation;
use hospitalInformation;

create table hosp_info(h_id int,h_name varchar(20),h_no_doctor bigint,constraint h_no_doctor_chk check(h_no_doctor>100),h_nurse_name varchar(20),h_doctor_id bigint not null unique,h_patient_id bigint primary key);

alter table hosp_info add constraint h_name_uni unique(h_name);

alter table hosp_info drop index h_name_uni;

select * from hosp_info;
desc hosp_info;
insert into hosp_info values(1,'ESI',300,'maya',11,50);
insert into hosp_info values(2,'usha',250,'kala',12,51);
insert into hosp_info values(3,'kamala nursing home',340,'jaya',13,52);
insert into hosp_info values(4,'subbayya',436,'megha',14,54);
insert into hosp_info values(5,'shankar eye ',346,'hema',15,55);

alter table hosp_info add constraint h_doctor_id_chk check(h_doctor_id>10 and h_doctor_id<50000);

alter table hosp_info drop constraint h_doctor_id_chk;
