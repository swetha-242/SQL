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

insert into state_info values(1,'india',23456,11,'hanumantha',true,345672,'chandra','indra',577222,356,400,267,5);
insert into state_info values(2,'australia',24456,12,'megha',true,245672,'bhaga','eega',577223,351,401,261,6);
insert into state_info values(3,'andra pradesh',13456,13,'lochana',false,345673,'soya','been',577224,352,402,262,4);
insert into state_info values(4,'arunachal pradesh',43456,14,'sana',true,365672,'sona','lika',577223,353,403,263,6);
insert into state_info values(5,'bangladesh',23454,15,'kishan',false,347672,'kishore','maya',577224,354,404,264,9);
insert into state_info values(6,'goa',23444,16,'hissani',true,345555,'swetha','sandy',577225,355,405,265,2);
insert into state_info values(7,'west benagl',222456,17,'nisarga',true,344442,'niss','sp',577226,346,406,266,1);
insert into state_info values(8,'himalaya',23111,18,'rohith',true,347772,'roths','illmini',577227,357,407,257,6);
insert into state_info values(9,'shiggavv',66656,19,'sneha',false,345668,'snehakka','shiya',577228,358,408,268,10);
insert into state_info values(10,'america',29996,20,'kaya',true,321372,'kavya','ub',577229,359,409,269,5);
insert into state_info values(11,'india',23456,21,'hanumantha',true,345672,'chandra','indra',577222,356,400,267,5);
insert into state_info values(12,'australia',24456,22,'megha',true,245672,'bhaga','eega',577223,351,401,261,6);
insert into state_info values(13,'andra pradesh',13456,23,'lochana',false,345673,'soya','been',577224,352,402,262,4);
insert into state_info values(14,'arunachal pradesh',43456,24,'sana',true,365672,'sona','lika',577223,353,403,263,6);
insert into state_info values(15,'bangladesh',23454,25,'kishan',false,347672,'kishore','maya',577224,354,404,264,9);
insert into state_info values(16,'goa',23444,26,'hissani',true,345555,'swetha','sandy',577225,355,405,265,2);
insert into state_info values(17,'west benagl',222456,27,'nisarga',true,344442,'niss','sp',577226,346,406,266,1);
insert into state_info values(18,'himalaya',23111,28,'rohith',true,347772,'roths','illmini',577227,357,407,257,6);
insert into state_info values(19,'shiggavv',66656,29,'sneha',false,345668,'snehakka','shiya',577228,358,408,268,10);
insert into state_info values(20,'america',29996,30,'kaya',true,321372,'kavya','ub',577229,359,409,269,5);

select * from state_info;

update state_info set s_countryName='kanchi' where s_id=1;
update state_info set s_leader='narendra modi' where s_id=1;
update state_info set s_CM='yedurappa' where s_countryName='kanchi';
update state_info set s_leader='karthik' where s_id=12;
update state_info set s_population=666666 where s_leader='hanumantha';
update state_info set s_PM='Manoj' where s_id=18;
update state_info set s_codeNo=66 where s_countryArea=13456;
update state_info set s_leader='kantha' where s_id=11;
update state_info set s_riversPresent=0 where s_childrens=261;
update state_info set s_PM='tharun' where s_females=401;

delete from state_info where s_PM='ub';
delete from state_info where s_='ub';
delete from state_info where s_id='10';

select * from state_info where s_id=4 and s_countryname='arunachal pradesh';

select * from state_info where s_leader='rohith' or s_presentOrNot=false;

select * from state_info where s_id in(2,4,5);

select * from state_info where s_PM not in('sandy','indra');

select * from state_info;