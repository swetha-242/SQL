create database RTOInformation;
use RTOInformation;

create table LLR_infoo(id int,LLR_name varchar(20),LLR_id int primary key,LLR_number bigint,LLR_address varchar(20),LLR_email varchar(20),
created_at timestamp,created_by varchar(20),LLR_status boolean,modified_by varchar(20));

desc LLR_infoo;

create table LLR_TEST_INFO(id int,LT_name varchar(20),L_test_id int primary key,L_LLR_id int,LT_number bigint,LT_address varchar(20),LT_email varchar(20),
created_at timestamp,created_by varchar(20),LLR_status boolean,modified_by varchar(20),foreign key(L_LLR_id)references LLR_infoo(LLR_id));

desc LLR_TEST_INFO;

select * from LLR_infoo;
insert into LLR_infoo values(1,'ramesh',21,546378,'shimoga','ramesh@gmail.com','2024-07-25 11:20:30','vidya',true,'gyana');
insert into LLR_infoo values(2,'ram',22,546312,'belgav','ram@gmail.com','2024-07-23 11:20:30','lkala',false,'deeru');
insert into LLR_infoo values(3,'ken',23,546313,'bidar','ken@gmail.com','2024-07-22 11:20:30','latha',true,'dachu');
insert into LLR_infoo values(4,'sham',24,546314,'hibli','sham@gmail.com','2024-07-21 11:20:30','rama',true,'kiya');
insert into LLR_infoo values(5,'payal',25,5463345,'dharwad','payal@gmail.com','2024-07-20 11:20:30','neha',false,'maya');
insert into LLR_infoo values(6,'deen',26,576544,'meghan','deen@gmail.com','2024-07-19 11:20:30','sala',false,'piya');
insert into LLR_infoo values(7,'dyanesh',27,532788,'bengaluru','dyanesh@gmail.com','2024-07-16 11:20:18','siya',true,'payal');
insert into LLR_infoo values(8,'sujala',28,527822,'pune','sujala@gmail.com','2024-07-17 11:20:30','shama',true,'hema');
insert into LLR_infoo values(9,'kala',29,546370,'mekka','kala@gmail.com','2024-07-15 11:20:30','shmi',false,'gagana');
insert into LLR_infoo values(10,'yama',30,546300,'alur','yama@gmail.com','2024-07-14 11:20:30','megha',true,'seema');
insert into LLR_infoo values(11,'seema',31,541378,'bangkok','seema@gmail.com','2024-07-25 11:20:30','vidya',true,'gyana');
insert into LLR_infoo values(12,'hema',32,546212,'davangere','hema@gmail.com','2024-07-23 11:20:30','lkala',false,'deeru');
insert into LLR_infoo values(13,'mean',33,546313,'koodli','mean@gmail.com','2024-07-22 11:20:30','latha',true,'dachu');
insert into LLR_infoo values(14,'jan',34,546344,'nittur','jan@gmail.com','2024-07-21 11:20:30','rama',true,'kiya');
insert into LLR_infoo values(15,'payal',35,5453345,'aynur','payal@gmail.com','2024-07-20 11:20:30','neha',false,'maya');
insert into LLR_infoo values(16,'heem',36,576644,'rippenpete','heem@gmail.com','2024-07-19 11:20:30','sala',false,'piya');
insert into LLR_infoo values(17,'dyanesh',37,732788,'bomsandra','dyanesh@gmail.com','2024-07-16 11:20:18','siya',true,'payal');
insert into LLR_infoo values(18,'shyam',38,5277822,'huderabad','shyam@gmail.com','2024-07-17 11:20:30','shama',true,'hema');
insert into LLR_infoo values(19,'bam',39,5463719,'chennai','bam@gmail.com','2024-07-15 11:20:30','shmi',false,'gagana');
insert into LLR_infoo values(20,'siiiya',40,5462000,'mexico','siiiya@gmail.com','2024-07-14 11:20:30','megha',true,'seema');

select * from LLR_TEST_INFO;
insert into LLR_TEST_INFO values(1,'ramesh',51,21,546378,'shimoga','ramesh@gmail.com','2024-07-25 11:20:30','vidya',true,'gyana');
insert into LLR_TEST_INFO values(2,'ram',52,22,546312,'belgav','ram@gmail.com','2024-07-23 11:20:30','lkala',false,'deeru');
insert into LLR_TEST_INFO values(3,'ken',53,23,546313,'bidar','ken@gmail.com','2024-07-22 11:20:30','latha',true,'dachu');
insert into LLR_TEST_INFO values(4,'sham',54,24,546314,'hibli','sham@gmail.com','2024-07-21 11:20:30','rama',true,'kiya');
insert into LLR_TEST_INFO values(5,'payal',55,25,5463345,'dharwad','payal@gmail.com','2024-07-20 11:20:30','neha',false,'maya');
insert into LLR_TEST_INFO values(6,'deen',56,26,576544,'meghan','deen@gmail.com','2024-07-19 11:20:30','sala',false,'piya');
insert into LLR_TEST_INFO values(7,'dyanesh',57,27,532788,'bengaluru','dyanesh@gmail.com','2024-07-16 11:20:18','siya',true,'payal');
insert into LLR_TEST_INFO values(8,'sujala',58,28,527822,'pune','sujala@gmail.com','2024-07-17 11:20:30','shama',true,'hema');
insert into LLR_TEST_INFO values(9,'kala',59,29,546370,'mekka','kala@gmail.com','2024-07-15 11:20:30','shmi',false,'gagana');
insert into LLR_TEST_INFO values(10,'yama',60,30,546300,'alur','yama@gmail.com','2024-07-14 11:20:30','megha',true,'seema');
insert into LLR_TEST_INFO values(11,'seema',61,31,541378,'bangkok','seema@gmail.com','2024-07-25 11:20:30','vidya',true,'gyana');
insert into LLR_TEST_INFO values(12,'hema',62,32,546212,'davangere','hema@gmail.com','2024-07-23 11:20:30','lkala',false,'deeru');
insert into LLR_TEST_INFO values(13,'mean',63,33,546313,'koodli','mean@gmail.com','2024-07-22 11:20:30','latha',true,'dachu');
insert into LLR_TEST_INFO values(14,'jan',64,34,546344,'nittur','jan@gmail.com','2024-07-21 11:20:30','rama',true,'kiya');
insert into LLR_TEST_INFO values(15,'payal',65,35,5453345,'aynur','payal@gmail.com','2024-07-20 11:20:30','neha',false,'maya');
insert into LLR_TEST_INFO values(16,'heem',66,36,576644,'rippenpete','heem@gmail.com','2024-07-19 11:20:30','sala',false,'piya');
insert into LLR_TEST_INFO values(17,'dyanesh',67,37,732788,'bomsandra','dyanesh@gmail.com','2024-07-16 11:20:18','siya',true,'payal');
insert into LLR_TEST_INFO values(18,'shyam',68,38,5277822,'huderabad','shyam@gmail.com','2024-07-17 11:20:30','shama',true,'hema');
insert into LLR_TEST_INFO values(19,'bam',69,39,5463719,'chennai','bam@gmail.com','2024-07-15 11:20:30','shmi',false,'gagana');
insert into LLR_TEST_INFO values(20,'siiiya',70,40,5462000,'mexico','siiiya@gmail.com','2024-07-14 11:20:30','megha',true,'seema');

select * from LLR_infoo;
select * from LLR_TEST_INFO;
update LLR_infoo set LLR_name='nayana' where id=20; /*updatng the table */
update LLR_TEST_INFO set LT_email='swetha@gmail.com' where id=9;

insert into LLR_infoo(id,LLR_id,LLR_name)values(1,21,'ramesh')on duplicate key update LLR_name='swetha';/*inserting the column on duplicate key using upsert methos*/
insert into LLR_TEST_INFO(id,L_test_id,LT_email)values(4,54,'sham@gmail.com')on duplicate key update LT_email='maahi@gmail.com';

replace into LLR_infoo(id,LLR_id,LLR_name,created_by,LLR_status)values(15,35,'reena','shanoon',true);/* replacing the values with id and LLR_id and other values*/
replace into LLR_TEST_INFO(id,L_test_id,LT_name,LLR_status)values(10,60,'swetha',true);


create table DRIVING_LICENCE_infoo(id int,DL_name varchar(20),DL_id int primary key,DL_callnumber bigint,DL_address varchar(20),DL_email varchar(20),
D_L_test_id int,D_LLR_id int,created_at timestamp,created_by varchar(20),DL_status boolean,modified_by varchar(20),
foreign key(D_L_test_id)references LLR_TEST_INFO(L_test_id),foreign key(D_LLR_id)references LLR_infoo(LLR_id));

create table DRIVING_LICENCE_TEST_info(id int,DL_t_name varchar(20),DL_test_id int primary key,DLT_DL_id int,DL_t_callnumber bigint,DL_t_address varchar(20),DL_t_email varchar(20),
created_at timestamp,created_by varchar(20),DL_t_status boolean,modified_by varchar(20),foreign key(DLT_DL_id)references DRIVING_LICENCE_infoo(DL_id));

desc DRIVING_LICENCE_infoo;

select * from DRIVING_LICENCE_infoo;
insert into DRIVING_LICENCE_infoo values(1,'sana',51,9480023026,'shivamogga','sana@gmail.com',51,21,now(),'guru',true,'megha');
insert into DRIVING_LICENCE_infoo values(2,'jaya',52,45374739,'begavi','jaya@gmail.com',52,22,now(),'meg',false,'kanya');
insert into DRIVING_LICENCE_infoo values(3,'bheema',53,574637922,'bidar','bheema@gmail.com',53,23,now(),'sahl',true,'shial');
insert into DRIVING_LICENCE_infoo values(4,'payal',54,464537338,'koppala','payal@gmail.com',54,24,now(),'sunil',true,'bhanu');
insert into DRIVING_LICENCE_infoo values(5,'sonu',55,436585938,'hampi','sonu@gmail.com',55,25,now(),'laya',false,'sunill');
insert into DRIVING_LICENCE_infoo values(6,'kala',56,32657900,'godavari','kala@gmail.com',56,26,now(),'keeya',true,'sushma');
insert into DRIVING_LICENCE_infoo values(7,'keiya',57,453534896,'nelmangala','keiya@gmail.com',57,27,now(),'leeru',false,'sujatha');
insert into DRIVING_LICENCE_infoo values(8,'noor',58,687436380,'gajnur','noor@gmail.com',58,28,now(),'keeru',true,'basu');
insert into DRIVING_LICENCE_infoo values(9,'adeeba',59,574634379,'badravathi','adeeba@gmail.com',59,29,now(),'snali',false,'kevin');
insert into DRIVING_LICENCE_infoo values(10,'mangal',60,835373900,'durga','mangal@gmail.com',60,30,now(),'nnja',false,'gelvin');
insert into DRIVING_LICENCE_infoo values(11,'rohith',61,7463542639,'kolige','rohith@gmail.com',61,31,now(),'hathori',true,'raki');
insert into DRIVING_LICENCE_infoo values(12,'sandy',62,6764484930,'hosur','sandy@gmail.com',62,32,now(),'hema',true,'ammu');
insert into DRIVING_LICENCE_infoo values(13,'arpi',63,8473636370,'rippanpete','arpi@gmail.com',63,33,now(),'giya',false,'laya');
insert into DRIVING_LICENCE_infoo values(14,'lohith',64,4536738932,'kadagu','lohith@gmail.com',64,34,now(),'diya',true,'pavan');
insert into DRIVING_LICENCE_infoo values(15,'karthik',65,5645380209,'wayanad','karthik@gmail.com',65,35,now(),'harshi',true,'golu');
insert into DRIVING_LICENCE_infoo values(16,'kshama',66,334657899,'davangere','kshama@gmail.com',66,36,now(),'charan',false,'suddu');
insert into DRIVING_LICENCE_infoo values(17,'neha',67,5564738399,'alur','neha@gmail.com',67,37,now(),'manoj',false,'simba');
insert into DRIVING_LICENCE_infoo values(18,'niss',68,5566783990,'mangalore','niss@gmail.com',68,38,now(),'kantha',true,'sahana');
insert into DRIVING_LICENCE_infoo values(19,'swetha',69,6677883390,'chikmangalur','swetha@gmail.com',69,39,now(),'gopala',true,'kavya');
insert into DRIVING_LICENCE_infoo values(20,'varun',70,7889030957,'kolar','varun@gmail.com',70,40,now(),'giri',false,'heema');

desc DRIVING_LICENCE_TEST_info;

select * from DRIVING_LICENCE_TEST_info;
insert into DRIVING_LICENCE_TEST_info values(1,'sana',81,51,9480023026,'shivamogga','sana@gmail.com',now(),'guru',true,'megha');
insert into DRIVING_LICENCE_TEST_info values(2,'jaya',82,52,45374739,'begavi','jaya@gmail.com',now(),'meg',false,'kanya');
insert into DRIVING_LICENCE_TEST_info values(3,'bheema',83,53,574637922,'bidar','bheema@gmail.com',now(),'sahl',true,'shial');
insert into DRIVING_LICENCE_TEST_info values(4,'payal',84,54,464537338,'koppala','payal@gmail.com',now(),'sunil',true,'bhanu');
insert into DRIVING_LICENCE_TEST_info values(5,'sonu',85,55,436585938,'hampi','sonu@gmail.com',now(),'laya',false,'sunill');
insert into DRIVING_LICENCE_TEST_info values(6,'kala',86,56,32657900,'godavari','kala@gmail.com',now(),'keeya',true,'sushma');
insert into DRIVING_LICENCE_TEST_info values(7,'keiya',87,57,453534896,'nelmangala','keiya@gmail.com',now(),'leeru',false,'sujatha');
insert into DRIVING_LICENCE_TEST_info values(8,'noor',88,58,687436380,'gajnur','noor@gmail.com',now(),'keeru',true,'basu');
insert into DRIVING_LICENCE_TEST_info values(9,'adeeba',89,59,574634379,'badravathi','adeeba@gmail.com',now(),'snali',false,'kevin');
insert into DRIVING_LICENCE_TEST_info values(10,'mangal',90,60,835373900,'durga','mangal@gmail.com',now(),'nnja',false,'gelvin');
insert into DRIVING_LICENCE_TEST_info values(11,'rohith',91,61,7463542639,'kolige','rohith@gmail.com',now(),'hathori',true,'raki');
insert into DRIVING_LICENCE_TEST_info values(12,'sandy',92,62,6764484930,'hosur','sandy@gmail.com',now(),'hema',true,'ammu');
insert into DRIVING_LICENCE_TEST_info values(13,'arpi',93,63,8473636370,'rippanpete','arpi@gmail.com',now(),'giya',false,'laya');
insert into DRIVING_LICENCE_TEST_info values(14,'lohith',94,64,4536738932,'kadagu','lohith@gmail.com',now(),'diya',true,'pavan');
insert into DRIVING_LICENCE_TEST_info values(15,'karthik',95,65,5645380209,'wayanad','karthik@gmail.com',now(),'harshi',true,'golu');
insert into DRIVING_LICENCE_TEST_info values(16,'kshama',96,66,334657899,'davangere','kshama@gmail.com',now(),'charan',false,'suddu');
insert into DRIVING_LICENCE_TEST_info values(17,'neha',97,67,5564738399,'alur','neha@gmail.com',now(),'manoj',false,'simba');
insert into DRIVING_LICENCE_TEST_info values(18,'niss',98,68,5566783990,'mangalore','niss@gmail.com',now(),'kantha',true,'sahana');
insert into DRIVING_LICENCE_TEST_info values(19,'swetha',99,69,6677883390,'chikmangalur','swetha@gmail.com',now(),'gopala',true,'kavya');
insert into DRIVING_LICENCE_TEST_info values(20,'varun',100,70,7889030957,'kolar','varun@gmail.com',now(),'giri',false,'heema');

update DRIVING_LICENCE_infoo set DL_name='shreedhar' where id=10; 
update DRIVING_LICENCE_TEST_info set DL_t_callnumber='8050473526' where id=17;

insert into DRIVING_LICENCE_infoo(id,DL_id,DL_name)values(7,57,'keiya')on duplicate key update DL_name='suhas';
insert into DRIVING_LICENCE_TEST_info(id,DL_test_id,modified_by)values(9,89,'kevin')on duplicate key update modified_by='shamantha';

replace into DRIVING_LICENCE_infoo(id,DL_id,created_by,created_at)values(12,62,'gowri',now());
replace into DRIVING_LICENCE_TEST_info(id,DL_test_id,DL_t_name)values(18,98,'maya');