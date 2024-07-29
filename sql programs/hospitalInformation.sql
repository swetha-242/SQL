create database hospitalInformation;
use hospitalInformation;

create table hospital_info(h_id int,h_name varchar(20),h_no_doctor bigint,constraint h_no_doctor_chk check(h_no_doctor>100),h_doctor_id bigint not null unique,h_patient_id bigint primary key);

alter table hospital_info add constraint h_name_uni unique(h_name);

alter table hospital_info drop index h_name_uni;

select * from hospital_info;
desc hospital_info;
insert into hospital_info values(1,'ESI',300,11,50);
insert into hospital_info values(2,'usha',250,12,51);
insert into hospital_info values(3,'kamala nursing home',340,13,52);
insert into hospital_info values(4,'subbayya',436,14,54);
insert into hospital_info values(5,'shankar eye ',346,15,55);

alter table hospital_info add constraint h_doctor_id_chk check(h_doctor_id>10 and h_doctor_id<50000);

alter table hospital_info drop constraint h_doctor_id_chk;
