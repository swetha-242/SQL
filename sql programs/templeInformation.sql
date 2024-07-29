create database templeInformation;
use templeInformation;
create table temple_info(t_id int not null,t_name varchar(30) unique,t_location varchar(20)unique,constructed_at date,constructed_by varchar(20),opening_time time,
closing_time time,t_distance int not null,total_devotees bigint,constraint devotes_chk check(total_devotees>50),godcount int,constraint godcount_chk check(godcount>=1));

insert into temple_info values(1,'durgamma ','huchhavanahalli','1970/09/09','virat','11:00:00','12:00:00',15,55,6);
insert into temple_info values(2,'karya anjeneya temple','banashankari','1979/10/08','sukanya','12:00:00','13:00:00',25,150,4);
insert into temple_info values(3,'veeranna swamy ','tirupati','1990/12/07','sahadeva','13:30:00','14:30:00',35,100,9);
insert into temple_info values(4,'sharadha ','mandya','1890/01/19','bhageeratha','14:15:00','15:00:00',45,200,6);
insert into temple_info values(5,'annapurneswari temple','horanaadu','1289/02/11','leelavathi','15:00:00','16:45:00',55,300,4);
insert into temple_info values(6,'shiva temple','bengaluru','2003/08/14','ravindra','06:00:00','8:00:00',109,400,6);
insert into temple_info values(7,'krishna ','mysore','2004/11/08','yograj','07:00:00','9:00:00',60,350,7);
insert into temple_info values(8,'anjaneya  temple','shivaginagar','1957/09/20','raama','05:30:00','8:30:00',70,450,3);
insert into temple_info values(9,'rama mandir ','dharwad','1090/11/01','narendra','04:15:00','06:00:00',80,550,2);
insert into temple_info values(10,'saibaba temple','ayodye','2000/06/06','sandeep','06:00:00','8:45:00',90,500,5);
insert into temple_info values(11,'lakshmi ','bidar','1970/09/09','virat','11:00:00','12:00:00',15,55,6);
insert into temple_info values(12,'karya  temple','hampi','1979/10/08','sukanya','12:00:00','13:00:00',25,150,4);
insert into temple_info values(13,'veeranna  ','mangalore','1990/12/07','sahadeva','13:30:00','14:30:00',35,100,9);
insert into temple_info values(14,'shreekrishna ','nittur','1890/01/19','bhageeratha','14:15:00','15:00:00',45,200,6);
insert into temple_info values(15,'annapurneswari ','hongalu','1289/02/11','leelavathi','15:00:00','16:45:00',55,300,4);
insert into temple_info values(16,'shiva ','peenya','2003/08/14','ravindra','06:00:00','8:00:00',109,400,6);
insert into temple_info values(17,'krishna devasthana','shrinagar','2004/11/08','yograj','07:00:00','9:00:00',60,350,7);
insert into temple_info values(18,'anjaneya  devasthana','ajinagar','1957/09/20','raama','05:30:00','8:30:00',70,450,3);
insert into temple_info values(19,'rama devasthana ','ayodhyaa','1090/11/01','narendra','04:15:00','06:00:00',80,550,2);
insert into temple_info values(20,'thippeswamy temple','banngkok','2000/06/06','sandeep','06:00:00','8:45:00',90,500,5);

select * from temple_info;

update temple_info set t_location="punjab" where t_id=1;
update temple_info set t_location="birir" where t_id=20;
update temple_info set t_location="kolige" where t_id=14;
update temple_info set t_location="yana" where t_id=3;
update temple_info set t_location="rajasthan" where t_id=4;

select * from temple_info;

alter table temple_info modify total_devotees bigint not null;

alter table temple_info add constraint t_location_uni unique(t_location);

alter table temple_info add constraint devotes_chk check(total_devotees>50 
and total_devotees<100);

alter table temple_info add constraint godcount_chk check(godcount>=1 
or godcount<=1000);

select * from temple_info;