create database stateInformarion;
use stateInformarion;
create table state_info(s_id int,s_name varchar(20),s_area int,s_codeNO int,s_leader varchar(20),s_present boolean,s_population bigint,s_CM varchar(20),s_PM varchar(20),s_capital int);

select * from state_info;

alter table state_info add column s_males varchar(20);
alter table state_info add column s_females varchar(20);
alter table state_info add column s_childrens varchar(20);
alter table state_info add column s_rivers boolean;

alter table state_info rename column s_name to s_countryName;
alter table state_info rename column s_area to s_countryArea;
alter table state_info rename column s_present to s_presentOrNot;
alter table state_info rename column s_rivers to s_riversPresent;
alter table state_info rename column s_capital to s_capitalCode;

alter table state_info modify column s_males bigint;
alter table state_info modify column s_females bigint;
alter table state_info modify column s_childrens bigint;
alter table state_info modify column s_riversPresent bigint;
alter table state_info modify column s_countryArea bigint;

desc state_info;

insert into state_into values(1,'india',23456,11,'hanumantha',true,345672,'chandra','indra',577222,356,400,267,5);
