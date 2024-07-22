create database bankDetails;
use bankDetails;
create table bankk_info(bank_id int,bank_name varchar(20),bank_branch varchar(20),bank_ownerName varchar(20),bank_clientName varchar(20));
select * from bank_info;
alter table bankk_info add column bank_benfid int;
alter table bankk_info add column bank_pincode bigint;
alter table  bankk_info add column bank_ammount bigint;
alter table bankk_info add column bank_credited boolean;
alter table bankk_info add column bank_cityName varchar(20);
select * from bankk_info;

alter table bankk_info rename column bank_id to bank_Unique_Id;
alter table bankk_info rename column bank_credited to bank_creditedOrNot;
alter table bankk_info rename column  bank_pincode to bank_areaPincode;
alter table bankk_info rename column bank_branch to bank_branchname;
alter table bankk_info rename column bank_name to bank_userName;
select * from bankk_info;

insert into bankk_info values(1,'SBI','prabhas','royy','rudra',12,577320,400000,true,'shimoga');
insert into bankk_info values(2,'Union','ganesh','pooja gandhi','navarang',30,32189,500000,true,'bangalore');
insert into bankk_info values(3,'HDFC','roshan','aaliya bhat','orian',6,577201,800000,true,'mysore');
insert into bankk_info values(4,'state bank ','devraj','kushi','HPC',10,32222,700000,false,'hassan');
insert into bankk_info values(5,'reserve','fernandis','noushin','intanie',1,456789,110000,true,'bidar');
insert into bankk_info values(6,'canara','vijay devrakonda','alli','krishna',20,674389,220000,false,'hubli');
insert into bankk_info values(7,'kotak','vijay','kishani','manjunatha',6,577202,770000,true,'bagalkote');
insert into bankk_info values(8,'sbi','sharukh','ramya','jaya',44,577222,706000,false,'badravathi');
insert into bankk_info values(9,'DCC bank','desouza','shiyana','cotlin',22,567839,703400,true,'chikmangalore');
insert into bankk_info values(10,'pragathi','densilni','koushini','priya',1,577333,700090,false,'shiggav');
select * from bankk_info;

update bankk_info set bank_userName="fernandis" where bank_unique_Id=1;
update  bankk_info set bank_userName="swetha" where bank_unique_Id=3;
update bankk_info set bank_branchname="canara" where bank_unique_Id=6;
update bankk_info set bank_branchname="union" where bank_benfid=12;
update bankk_info set bank_areaPincode="789654" where bank_uniqueI_d=1;
update bankk_info set bank_ownerName="kevin" where bank_userName='swetha';
update bankk_info set bank_benfid="99" where bank_unique_Id=3;
update bankk_info set bank_clientName="basu" where bank_unique_Id=10;
update bankk_info set bank_ammount="32000" where bank_ownerName='sharukh';
select * from bankk_info;

delete from bankk_info where bank_uniqueid=3;
delete from bankk_info where bank_areaPincodee=577320;
delete from bankk_info where bank_cityName='shimoga';
select * from bankk_info;

select * from bankk_info where bank_uniqueid=4 and bank_cityName='hassan';

select * from bankk_info where bank_username='union' or bank_ammount=700090;

select * from bankk_info where bank_uniqueId in(2,4);

select * from bankk_info where bank_username not in('canara','sbi');

alter table bankk_info drop bank_pincodee;
alter table bankk_info drop bank_benfidd;
alter table bankk_info drop bank_ammountt;
alter table bankk_info drop bank_creditedd;
alter table bankk_info drop bank_cityNamee;
rollback;
select * from bankk_info;
