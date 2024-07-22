/* go to Edit>preferences>sql editor>then go to last option disable it then press ok*/
create database MovieDetails;
use MovieDetails;
create table movie_info(movie_id int,movie_name varchar(20),movie_hero varchar(20),movie_heroin varchar(20),movie_theatername varchar(20));
select * from movie_info;
alter table movie_info add column movie_no int;
alter table movie_info add column movie_price bigint;
alter table movie_info add column movie_earning bigint;
alter table movie_info add column movie_released boolean;
alter table movie_info add column movie_director varchar(20);
select * from movie_info;

alter table movie_info rename column movie_no to movie_number;
alter table movie_info rename column movie_released to movie_releasedOrNot;
alter table movie_info rename column movie_earning to movie_totalEarn;
alter table movie_info rename column movie_director to movie_directorName;
alter table movie_info rename column movie_id to movie_uniqueId;
select * from movie_info;

insert into movie_info values(1,'kalki','prabhas','royy','HPC',12,200,400000,true,'kishore');
insert into movie_info values(2,'milana','ganesh','pooja gandhi','navarang',30,100,500000,true,'prabhi');
insert into movie_info values(3,'ABCD','roshan','aaliya bhat','orian',6,250,800000,true,'denis');
insert into movie_info values(4,'ABCD2','devraj','kushi','HPC',10,150,700000,flase,'bhatta');
insert into movie_info values(5,'anabella','fernandis','noushin','intanie',1,155,110000,true,'ghonslave');
insert into movie_info values(6,'family star','vijay devrakonda','alli','krishna',20,220,220000,false,'bagya');
insert into movie_info values(7,'ishq','vijay','kishani','manjunatha',6,333,770000,true,'denim');
insert into movie_info values(8,'3 idiots','sharukh','ramya','jaya',44,500,706000,false,'ibrahim');
insert into movie_info values(9,'minions','desouza','shiyana','cotlin',22,151,703400,true,'quarlynn');
insert into movie_info values(10,'ice age','densilni','koushini','priya',1,222,700090,false,'sheyonni');
select * from movie_info;

update movie_info set movie_hero="fernandis" where movie_uniqueId=1;
update movie_info set movie_heroin="swetha" where movie_uniqueId=3;
update movie_info set movie_hero="kenn" where movie_uniqueId=2;
update movie_info set movie_name="krishnan love story" where movie_number=18;
update movie_info set movie_price="444444" where movie_uniqueId=1;
update movie_info set movie_theatername="kevin" where movie_releasedOrNot=true;
update movie_info set movie_number="99" where movie_uniqueId=3;
update movie_info set movie_directorName="basu" where movie_uniqueId=10;
update movie_info set movie_totalEarn="324567" where movie_hero='sharukh';
update movie_info set movie_number="43" where movie_uniqueId=9;
select * from movie_info;

delete from movie_info where movie_uniqueid=3;
delete from movie_info where movie_name='kalki';
delete from movie_info where movie_directorName='ibrahim';
select * from movie_info;

select * from movie_info where movie_uniqueId=4 and movie_name='ABCD2';

select * from movie_info where movie_price=155 or movie_releasedOrNot=false;

select * from movie_info where movie_uniqueId in(2,4,5,6,7);

select * from movie_info where movie_number not in(10,1);