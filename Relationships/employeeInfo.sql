/*ONE TO ONE*/

create database employeeInfoo;
use employeeInfoo;

create table emp_infoo(id int,emp_name varchar(20),emp_number bigint,emp_id int primary key,emp_age int,emp_address varchar(20),emp_email varchar(20),emp_gender char,emp_experience bigint,emp_salary bigint);
desc emp_infoo;
select * from emp_infoo;

create table company_info(id int,comp_name varchar(20),cmp_code bigint,cmp_id int primary key,cmp_emp_id int,cmp_location varchar(20),total_no_cmp bigint,cmp_HR varchar(20),cmp_feedback varchar(20),cmp_review int,foreign key(cmp_emp_id)references emp_infoo(emp_id));
desc company_info;
select * from company_info;

insert into emp_infoo values(1,'swetha',9480023026,1,30,'shivamogga','swetha@gmail.com','f',10,34500);
insert into emp_infoo values(2,'rohith',9986683576,2,29,'goa','rohith@gmail.com','m',13,24678);
insert into emp_infoo values(3,'hitha',45362902880,3,20,'bidar','hitha@gmail.com','f',11,136843);
insert into emp_infoo values(4,'rakesh',4635378292,4,25,'gulbarga','rakesh@gmail.com','m',4,50000);
insert into emp_infoo values(5,'manu',48463527289,5,37,'hampi','manu@gmail.com','m',8,954444);
insert into emp_infoo values(6,'payal',4735382902,6,33,'machenalli','payal@gmail.com','f',6,23000);
insert into emp_infoo values(7,'hemavathi',6773638900,7,43,'davangere','hemavathi@gmail.com','f',7,45000);
insert into emp_infoo values(8,'sheela',4567999999,8,67,'survanne','sheela@gmail.com','f',30,340000);
insert into emp_infoo values(9,'kshama',9988345678,9,40,'savlanga','kshama@gmail.com','f',24,230000);
insert into emp_infoo values(10,'siya',2435476257,10,45,'alur','siya@gmail.com','f',4,470000);
insert into emp_infoo values(11,'sonu',6789826259,11,74,'sirsi','sonu@gmail.com','f',5,768033);
insert into emp_infoo values(12,'seema',99872335489,12,22,'bangkok','seema@gmail.com','m',10,600000);
insert into emp_infoo values(13,'rohith',9986683576,13,29,'goa','rohith@gmail.com','m',9,305999);
insert into emp_infoo values(14,'jeevan',922642790,14,35,'honnali','jeevan@gmail.com','m',27,4450000);
insert into emp_infoo values(15,'siya',2435476257,15,45,'machenalli','siya@gmail.com','f',40,9000000);
insert into emp_infoo values(16,'jeri',9985647290,16,48,'birur','jeri@gmail.com','m',17,670000);
insert into emp_infoo values(17,'chiru',8050473452,17,67,'bangkok','chiru@gmail.com','m',7,5670000);
insert into emp_infoo values(18,'chaya',88764330030,18,24,'white field','chaya@gmail.com','f',6,900000);
insert into emp_infoo values(19,'kiya',35233453678,19,19,'BTM','kiya@gmail.com','m',9,605555);
insert into emp_infoo values(20,'maya',098363783987,20,40,'pune','maya@gmail.com','f',14,4500000);



insert into company_info values(1,'wipr0',577201,21,1,'bengaluru',30,'jaya','good',5);
insert into company_info values(2,'infosys',577202,22,2,'shivamogga',12,'kALA','average',4);
insert into company_info values(3,'amazon',577203,23,3,'bidar',5,'hema','best',3);
insert into company_info values(4,'MCAee',577204,24,4,'gulbarga',20,'swetha','worst',2);
insert into company_info values(5,'TATA',577205,25,5,'mangalore',15,'jeeva','good',4);
insert into company_info values(6,'tata elexci',577206,26,6,'shikaripura',13,'hemanth','good',1);
insert into company_info values(7,'tcs',577207,27,7,'shiralkoppa',8,'rohith','average',5);
insert into company_info values(8,'capgemini',577208,28,8,'white field',6,'varun','best',3);
insert into company_info values(9,'cognizant',577209,29,9,'BTM',16,'niss','best',1);
insert into company_info values(10,'enventure',577210,30,10,'kormangala',21,'pallavi','best',3);
insert into company_info values(11,'flipkart',577211,31,11,'pune',15,'sneha','average',2);
insert into company_info values(12,'meeesho',577212,32,12,'hyderabad',19,'bhoomi','worst',5);
insert into company_info values(13,'aeither',577213,33,13,'chennai',9,'anusha','good',4);
insert into company_info values(14,'penee',577214,34,14,'japan',10,'amitha','best',3);
insert into company_info values(15,'freshwe world',577215,35,15,'chikmangalore',3,'payal','average',3);
insert into company_info values(16,'figma',577216,36,16,'odissa',4,'kiru','average',4);
insert into company_info values(17,'siya',577217,37,17,'bangkok',30,'sandya','best',4);
insert into company_info values(18,'sahali',577218,38,18,'mexico',23,'karthik','average',1);
insert into company_info values(19,'infotech',577219,39,19,'America',28,'hitha','good',5);
insert into company_info values(20,'technok',577220,40,20,'china',22,'kavya','average',2);

/*CASE */
select comp_name,cmp_id,case when comp_name='TATA' then cmp_id when comp_name='infosys' then cmp_id else null end as 
empp from company_info;

/*LIMIT And OFFSET*/
select * from emp_infoo limit 6,10;

/*GROUP BY and HAVING CLAUSE*/
select sum(emp_salary)as total_salary,emp_name from emp_infoo group by emp_name having total_salary>10000;  

/*ORDER BY*/
select * from company_info order by cmp_review;