/*ONE TO MANY*/

create database HotelInfoo;
use HotelInfoo;

create table hot_infoo(id int,hot_name varchar(20),hot_number bigint,hot_id int primary key,hot_constructed_years int,hot_address varchar(20),hot_email varchar(20),created_at timestamp,hot_emperty bigint,hot_expense bigint);
desc hot_infoo;
select * from hot_infoo;

create table custt_infooo(id int,cust_name varchar(20),cust_number bigint,cust_id int primary key,cust_hot_id int,cust_location varchar(20),total_no_cust bigint,created_at timestamp,hot_emperty bigint,cust_review int,foreign key(cust_hot_id)references hot_infoo(hot_id));
desc custt_infooo;
select * from custt_infooo;

insert into hot_infoo values(1,'swetha',9480023026,1,30,'shivamogga','swetha@gmail.com',now(),10,34500);
insert into hot_infoo values(2,'rohith',9986683576,2,29,'goa','rohith@gmail.com',now(),13,24678);
insert into hot_infoo values(3,'hitha',45362902880,3,20,'bidar','hitha@gmail.com',now(),11,136843);
insert into hot_infoo values(4,'rakesh',4635378292,4,25,'gulbarga','rakesh@gmail.com',now(),4,50000);
insert into hot_infoo values(5,'manu',48463527289,5,37,'hampi','manu@gmail.com',now(),8,954444);
insert into hot_infoo values(6,'payal',4735382902,6,33,'machenalli','payal@gmail.com',now(),6,23000);
insert into hot_infoo values(7,'hemavathi',6773638900,7,43,'davangere','hemavathi@gmail.com',now(),7,45000);
insert into hot_infoo values(8,'sheela',4567999999,8,67,'survanne','sheela@gmail.com',now(),30,340000);
insert into hot_infoo values(9,'kshama',9988345678,9,40,'savlanga','kshama@gmail.com',now(),24,230000);
insert into hot_infoo values(10,'siya',2435476257,10,45,'alur','siya@gmail.com',now(),4,470000);
insert into hot_infoo values(11,'sonu',6789826259,11,74,'sirsi','sonu@gmail.com',now(),5,768033);
insert into hot_infoo values(12,'seema',99872335489,12,22,'bangkok','seema@gmail.com',now(),10,600000);
insert into hot_infoo values(13,'rohith',9986683576,13,29,'goa','rohith@gmail.com',now(),9,305999);
insert into hot_infoo values(14,'jeevan',922642790,14,35,'honnali','jeevan@gmail.com',now(),27,4450000);
insert into hot_infoo values(15,'siya',2435476257,15,45,'machenalli','siya@gmail.com',now(),40,9000000);
insert into hot_infoo values(16,'jeri',9985647290,16,48,'birur','jeri@gmail.com',now(),17,670000);
insert into hot_infoo values(17,'chiru',8050473452,17,67,'bangkok','chiru@gmail.com',now(),7,5670000);
insert into hot_infoo values(18,'chaya',88764330030,18,24,'white field','chaya@gmail.com',now(),6,900000);
insert into hot_infoo values(19,'kiya',35233453678,19,19,'BTM','kiya@gmail.com',now(),9,605555);
insert into hot_infoo values(20,'maya',098363783987,20,40,'pune','maya@gmail.com',now(),14,4500000);



insert into custt_infooo values(1,'mangal',577201,21,1,'bengaluru',30,now(),10,5);
insert into custt_infooo values(2,'shreya',577202,22,2,'shivamogga',12,now(),13,4);
insert into custt_infooo values(3,'chaitra',577203,23,3,'bidar',5,now(),11,3);
insert into custt_infooo values(4,'shreena',577204,24,4,'gulbarga',20,now(),4,2);
insert into custt_infooo values(5,'swetha',577205,25,5,'mangalore',15,now(),8,4);
insert into custt_infooo values(6,'sneha elexci',577206,26,6,'shikaripura',13,now(),6,1);
insert into custt_infooo values(7,'nisarga',577207,27,7,'shiralkoppa',8,now(),7,5);
insert into custt_infooo values(8,'aakruthi',577208,28,8,'white field',6,now(),30,3);
insert into custt_infooo values(9,'moulya',577209,29,9,'BTM',16,now(),24,1);
insert into custt_infooo values(10,'amulya',577210,30,10,'kormangala',21,now(),4,3);
insert into custt_infooo values(11,'spoorthi',577211,31,11,'pune',15,now(),5,2);
insert into custt_infooo values(12,'sana',577212,32,12,'hyderabad',19,now(),10,5);
insert into custt_infooo values(13,'neha',577213,33,13,'chennai',9,now(),9,4);
insert into custt_infooo values(14,'shifa',577214,34,14,'japan',10,now(),27,3);
insert into custt_infooo values(15,'sara world',577215,35,15,'chikmangalore',3,now(),40,3);
insert into custt_infooo values(16,'maya',577216,36,16,'odissa',4,now(),17,4);
insert into custt_infooo values(17,'siya',577217,37,17,'bangkok',30,now(),7,4);
insert into custt_infooo values(18,'miya',577218,38,18,'mexico',23,now(),6,1);
insert into custt_infooo values(19,'payal',577219,39,19,'America',28,now(),9,5);
insert into custt_infooo values(20,'adeeba',577220,40,20,'china',22,now(),14,2);

/*CASE */
select hot_name,hot_id,case when hot_name='swetha' then hot_id when hot_name='rakesh' then hot_id else null end as 
hotel from hot_infoo;

/*LIMIT And OFFSET*/
select * from custt_infooo limit 6,10;

/*GROUP BY and HAVING CLAUSE*/
select sum(cust_review)as total_review,cust_location from custt_infooo group by cust_location having total_review>2;  

/*ORDER BY*/
select * from hot_infoo order by hot_constructed_years;