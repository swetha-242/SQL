create database Tourist;
use Tourist;
create table tourist_places(t_agencyName varchar(40),t_vehicleNo varchar(20),t_driverName varchar(20),t_places varchar(20),t_totalMembers bigint,t_driverNo bigint,t_pricePerHead bigint,t_totalPrice bigint,t_stayigDays bigint);
select * from tourist_places;

insert into tourist_places values('sri ganesh','KA 21 AB 1234','beeresh','mangalore',10,234587900,400,5000,2);
insert into tourist_places values('sri gaja','KA 21 AB 1235','bhagya','hassan',11,234587901,300,3000,1);
insert into tourist_places values('kashmika','KA 21 AB 1236','magya','bangaore',16,234587903,400,5000,2);
insert into tourist_places values('shri hari','KA 21 AB 1237','kshema','kolar',19,234587902,200,5050,5);
insert into tourist_places values('nhavya travels','KA 21 AB 1238','kavya','kerala',1,234587904,100,5300,7);
insert into tourist_places values('durga travels','KA 21 AB 1239','bhavya','kundapur',14,234587905,440,5450,8);
insert into tourist_places values('megha','KA 21 AB 1210','beeresh','sakleshpura',13,234587906,460,5400,2);
insert into tourist_places values('sri ganga travls','KA 21 AB 1211','soujanya','ayodhya',12,234587970,405,5560,1);
insert into tourist_places values('yamuna','KA 21 AB 1212','sngya','chikmangalore',20,234587908,430,5000,3);
insert into tourist_places values('godavari','KA 21 AB 1213','sonalika','shimoga',10,234587909,440,5000,5);
insert into tourist_places values('jamuna','KA 21 AB 1214','onika','koppa',22,234587910,400,5000,1);
insert into tourist_places values('kaveri','KA 21 AB 1215','monika','wayanad',5,234587922,40,5000,2);
insert into tourist_places values('bindu travels','KA 21 AB 1216','swetha','himalaya',8,234587911,500,5000,9);
insert into tourist_places values('bharghavi road','KA 21 AB 1217','nisarga','jammu',9,234587913,230,5000,10);
insert into tourist_places values('bheeshma','KA 21 AB 1218','sneha','paris',7,234587917,340,5000,22);
insert into tourist_places values('nrupada gravels','KA 21 AB 1219','shreena','usa',8,234587919,450,5000,12);
insert into tourist_places values('vaishnava','KA 21 AB 1220','beeresh','kedar',3,234587930,450,5000,14);
insert into tourist_places values('gajanana travels','KA 21 AB 1221','adeeba','uk',2,234587930,580,5000,17);
insert into tourist_places values('mamatha travels','KA 21 AB 1222','mangal','bangkok',20,234587935,320,5000,15);
insert into tourist_places values('bhairaveshwara travels','KA 21 AB 1223','rohith','goa',10,234587945,220,5000,2);

select * from tourist_places;
desc tourist_places;
show tables;