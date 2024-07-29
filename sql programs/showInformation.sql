create database showInformation;
use showInformation;
create table show_info(r_id int not null,s_r_name varchar(20) not null unique,show_r_location varchar(30)unique,open_showroom timestamp,open_fromperson varchar(20),showmanname varchar(20),mobile_num bigint,total_vehicles int,constraint total_vehicles check(total_vehicles>=0),
car_price bigint,constraint car_price_chk check(car_price>=0),carshowroom_present boolean);

select * from show_info;
insert into show_info values(1,'elite auto','chitradurga','2022-07-02 07:30:00','aarati',
'ratan',8097127786,1000,10000000,true);
insert into show_info values(2,'prime auto car','davanagere','2022-11-10 07:30:00','ananth',
'neethu',9812893467,90,90800000,false);
insert into show_info values(3,'speedster bikes','jayanagara','2022-09-18 10:30:00','aadi',
'amith',8097125678,2000,98000000,true);
insert into show_info values(4,'apex bike','vijayanagara','2022-07-02 08:30:00','sindura',
'akshay',8945890876,800,78000000,false);
insert into show_info values(5,'ktm bike','mandya','2021-12-19 07:30:00','sindu',
'geeta',8910982536,500,10900000,true);
insert into show_info values(6,'urban wheelhouse','shimogga','2021-07-26 12:00:00','nandu',
'leela',9017265437,100,9000000,true);
insert into show_info values(7,'horizon bike gallery','chennagiri','2021-11-20 10:00:00',
'ankith','harshi',8910092536,10000,78000000,true);
insert into show_info values(8,'velocity bikers','chamrajanagara','2021-08-19 12:27:20',
'ambika','arjun',8670982536,20000,90800000,false);
insert into show_info values(9,'rideon motors','kr market','2021-10-08 09:29:00',
'bhuvan','soundarya',9076236789,300,1800000,true);
insert into show_info values(10,'nitro bike','lalbagh','2021-07-02 09:30:00',
'kala','radhika',8910982356,59000,1890000,false);
insert into show_info values(11,'elite','bangladesh','2022-07-02 07:30:00','aarati',
'ratan',8097127786,1000,10000000,true);
insert into show_info values(12,'prime auto car','davanagere','2022-11-10 07:30:00','ananth',
'neethu',9812893467,90,90800000,false);
insert into show_info values(13,'speedster bikes','jayanagara','2022-09-18 10:30:00','aadi',
'amith',8097125678,2000,98000000,true);
insert into show_info values(14,'apex bike','vijayanagara','2022-07-02 08:30:00','sindura',
'akshay',8945890876,800,78000000,false);
insert into show_info values(15,'ktm bike','mandya','2021-12-19 07:30:00','sindu',
'geeta',8910982536,500,10900000,true);
insert into show_info values(16,'urban wheelhouse','shimogga','2021-07-26 12:00:00','nandu',
'leela',9017265437,100,9000000,true);
insert into show_info values(17,'horizon bike gallery','chennagiri','2021-11-20 10:00:00',
'ankith','harshi',8910092536,10000,78000000,true);
insert into show_info values(18,'velocity bikers','chamrajanagara','2021-08-19 12:27:20',
'ambika','arjun',8670982536,20000,90800000,false);
insert into show_info values(19,'rideon motors','kr market','2021-10-08 09:29:00',
'bhuvan','soundarya',9076236789,300,1800000,true);
insert into show_info values(20,'nitro bike','lalbagh','2021-07-02 09:30:00',
'kala','radhika',8910982356,59000,1890000,false);

update show_info set showmanname="shaya" where r_id=1;
update show_info set showmanname="kala" where r_id=20;
update show_info set showmanname="shrreya" where r_id=14;
update show_info set showmanname="meena" where r_id=3;
update show_info set showmanname="ganga" where r_id=4;

select * from show_info;

alter table show_info modify mobile_num bigint not null;

alter table show_info add constraint showmanname_uni unique(showmanname);

alter table show_info add constraint total_vehicles_chk check(total_vehicles>100 
and total_vehicles<100);

alter table show_room add constraint car_price_chk check(car_price>=1000 
or car_price<=1000000);


