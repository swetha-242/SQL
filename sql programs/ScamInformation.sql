create database ScamInformation;
use ScamInformation;
create table scam_info(s_id int,s_name varchar(20),s_contact int,s_scamName varchar(20),s_type varchar(20),s_date bigint,s_time bigint,s_location varchar(20),s_state int);

select * from scam_info;

alter table scam_info add column s_mail varchar(20);
alter table scam_info add column s_Resolve int;
alter table scam_info add column s_reporter varchar(20);
alter table scam_info add column s_resolveOrNot int;
alter table scam_info add column s_spamorNot boolean;

alter table scam_info drop column s_resolve;
alter table scam_info drop column s_spamOrNot;

alter table scam_info rename column s_name to s_PersonName;
alter table scam_info rename column s_spam to s_spamOrNot;
alter table scam_info rename column s_mail to s_personMail;
alter table scam_info rename column s_reporter to s_reporterName;
alter table scam_info rename column s_location to s_spamLocation;

alter table scam_info modify column s_contact bigint;
alter table scam_info modify column s_time varchar(20);
alter table scam_info modify column s_resolve bigint;
alter table scam_info modify column s_state varchar(20);
alter table scam_info modify column s_resolveOrNot boolean;

desc scam_info;

insert into scam_info values(1,'ganesh',9460023035,'gnyanesh','email',2,'2 PM','shimoga','karnataka','ganesh@gmail.com','priya',true,true);
insert into scam_info values(2,'anish',9160023035,'ayesh','call',3,'3 AM','mangalore','karnataka','anish@gmail.com','kayal',true,false);
insert into scam_info values(3,'beeresh',9260023035,'suresh','instagram',10,'19 PM','bidar','west bengal','beeresh@gmail.com','komal',false,true);
insert into scam_info values(4,'meghana',9360023035,'payal','whatsapp',1,'1 PM','kolara','usa','meghana@gmail.com','mahesh',false,true);
insert into scam_info values(5,'ganga',9560023035,'likith','email',7,'7 AM','alur','chikago','ganga@gmail.com','kavya',true,true);
insert into scam_info values(6,'ajay',9470023035,'shriya','twitter',9,'9 AM','davangere','japan','ajay@gmail.com','kala',true,false);
insert into scam_info values(7,'piyush',9480023035,'sara','email',10,'10 PM','mysore','chennai','piyush@gmail.com','nayana',false,false);
insert into scam_info values(8,'maya',9461023035,'kiya','facebook',3,'3 AM','gorur','karnataka','maya@gmail.com','usha',false,true);
insert into scam_info values(9,'giyan',9462023035,'ramesh','google',6,'6 PM','chikmangalore','mumbai','giyan@gmail.com','hari',true,false);
insert into scam_info values(10,'rama',9463023035,'theertha','yahoo',12,'12 AM','shimoga','punjab','ramah@gmail.com','suri',true,true);
insert into scam_info values(11,'ganesh',9460023035,'gnyanesh','email',2,'2 PM','shimoga','karnataka','ganesh@gmail.com','priya',true,true);
insert into scam_info values(12,'anish',9160023035,'ayesh','call',3,'3 AM','mangalore','karnataka','anish@gmail.com','kayal',true,false);
insert into scam_info values(13,'beeresh',9260023035,'suresh','instagram',10,'19 PM','bidar','west bengal','beeresh@gmail.com','komal',false,true);
insert into scam_info values(14,'meghana',9360023035,'payal','whatsapp',1,'1 PM','kolara','usa','meghana@gmail.com','mahesh',false,true);
insert into scam_info values(15,'ganga',9560023035,'likith','email',7,'7 AM','alur','chikago','ganga@gmail.com','kavya',true,true);
insert into scam_info values(16,'ajay',9470023035,'shriya','twitter',9,'9 AM','davangere','japan','ajay@gmail.com','kala',true,false);
insert into scam_info values(17,'piyush',9480023035,'sara','email',10,'10 PM','mysore','chennai','piyush@gmail.com','nayana',false,false);
insert into scam_info values(18,'maya',9461023035,'kiya','facebook',3,'3 AM','gorur','karnataka','maya@gmail.com','usha',false,true);
insert into scam_info values(19,'giyan',9462023035,'ramesh','google',6,'6 PM','chikmangalore','mumbai','giyan@gmail.com','hari',true,false);
insert into scam_info values(20,'rama',9463023035,'theertha','yahoo',12,'12 AM','shimoga','punjab','ramah@gmail.com','suri',true,true);

select * from scam_info;

update scam_info set s_spamLocation='udupi' where s_id=2;
update scam_info set s_resolveOrNot=false where s_id=3;
update scam_info set s_time='11 AM' where s_scamName='suresh';
update scam_info set s_spamOrNot=false where s_state='usa';
update scam_info set s_scamName='sheelu' where s_type='email';
update scam_info set s_date=24 where s_id=18;
update scam_info set s_personName='manya' where s_contact=9462023035;
update scam_info set s_type='messenger' where s_id=5;
update scam_info set s_reporterName='nimisha' where s_date=3;
update scam_info set s_type='trucaller' where s_time='3 AM';

delete from scam_info where s_scamName='sheelu';
delete from scam_info where s_id=7;
delete from scam_info where s_contact=9260023035;

select * from scam_info where s_id=4 and s_scamName='payal';

select * from scam_info where s_personMail='swetha@gmail.com' or s_personName='maya';

select * from scam_info where s_id in(14,4,20);

select * from scam_info where s_date not in(1,9);

select * from scam_info;