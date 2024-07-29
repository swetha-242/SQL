create database mteroInformation;
use mteroInformation;
create table metro_info(metro_id int not null,metro_name varchar(30) unique,location varchar(20)unique,built_at date,built_by varchar(20),open_time time,close_time time,distance int not null,no_of_devotees bigint,constraint devotes_chk 
check(no_of_devotees>50),no_of_priest int,constraint priest_chk check(no_of_priest>=1));

insert into metro_info values(11,'nammametro','davanagere','2003/08/14','raviii','06:00:00','8:00:00',10,50,6);
insert into metro_info values(2,' vijro','makere','2003/08/14','ravind','06:00:00','8:00:00',10,300,5);
insert into metro_info values(3,'naa metro','nelamangala','2003/08/14','ravin','06:00:00','8:00:00',10,300,6);
insert into metro_info values(4,'namma metro','rajajinagar','2003/08/14','ravindra','06:00:00','8:00:00',109,50,6);
insert into metro_info values(5,'na metro','yeswanthpura','2003/08/14','ravindra','06:00:00','8:00:00',10,300,6);
insert into metro_info values(6,'a metro','banavara','2003/03/14','ravindra','06:00:00','8:00:00',19,300,5);
insert into metro_info values(7,'namma tro','jalahalli','2003/04/14','ravindra','06:00:00','8:00:00',109,300,9);
insert into metro_info values(8,'nma metro','dasarahalli','2003/08/14','ravindra','06:00:00','8:00:00',109,300,7);
insert into metro_info values(9,'namma meo','davanagere','2003/08/17','ravindra','06:00:00','8:00:00',109,500,8);
insert into metro_info values(10,'ma metro','danagere','2003/09/14','ravindra','06:00:00','8:00:00',109,300,7);
insert into metro_info values(11,'namma mro','davanere','2003/08/14','ravindra','06:00:00','8:00:00',109,300,7);
insert into metro_info values(12,'nama tro','hasan','2003/08/14','ravindra','06:00:00','8:00:00',109,300,5);
insert into metro_info values(13,'ametro','mangalore','2003/08/14','ravindra','06:00:00','8:00:00',109,300,5);
insert into metro_info values(14,'mma metro','udupi','2003/08/14','ravindra','06:00:00','8:00:00',109,400,9);
insert into metro_info values(15,'namma mtro','arshike','2003/08/14','ravindra','06:00:00','8:00:00',109,400,6);
insert into metro_info values(16,'nammmetro','tumkur','2003/08/14','ravindra','06:00:00','8:00:00',109,300,7);
insert into metro_info values(17,'namma mero','banglore','2003/08/24','ravindra','06:00:00','8:00:00',109,600,8);
insert into metro_info values(17,'valro','bglore','2003/08/24','ravindra','06:00:00','8:00:00',109,300,9);
insert into metro_info values(19,'nammaro','davnere','2003/08/15','ravindra','06:00:00','8:00:00',109,500,8);
insert into metro_info values(20,'namma metro','shivmogga','2003/09/16','ravindra','06:00:00','8:00:00',109,400,6);

select * from metro_info;

update metro_info set metro_number=457 where metro_id=45;
update metro_info set metro_number=789 where metro_id=36;
update metro_info set metro_number=876 where metro_id=45;
update metro_info set metro_number=675 where metro_id=34;
update metro_info set metro_number=654 where metro_id=23;

alter table metro_info modify contact_num bigint not null;
alter table metro_info add constraint manager_name_uni unique(manager_name);
alter table metro_info add constraint no_of_metros_chk check(no_of_metros>100 
and no_of_metros<1000);
alter table metro_info add constraint metr_price_chk check(metros_price>=100 
or metros_price<=10000);
