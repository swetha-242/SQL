create database chatInformation;
use chatInformation;
create table chat_info (id int primary key,username varchar(50) not null,email varchar(100) unique,message text,timestamp datetime not null,
    status varchar(20) not null,user_id int unique,rating int check (rating between 1 and 5),created_at datetime default current_timestamp,updated_at datetime);

insert into chat_info values (21, 'manya', 'manya@example.com', 'Hello World', NOW(), 'active', 11, 5, NOW(), NOW());
insert into chat_info values(22, 'shiva', 'shiva@example.com', 'Hi there', NOW(), 'inactive', 12, 4, NOW(), NOW());
insert into chat_info values(23, 'ganga', 'ganga@example.com', 'Good morning', NOW(), 'active', 13, 3, NOW(), NOW());
insert into chat_info values(24, 'gang', 'gang@example.com', 'How are you?', NOW(), 'active', 14, 5, NOW(), NOW());
insert into chat_info values(25, 'raj', 'raj@example.com', 'I am fine', NOW(), 'inactive', 15, 2, NOW(), NOW());
insert into chat_info values(26, 'kris', 'kris@example.com', 'What\'s up?', NOW(), 'active', 16, 1, NOW(), NOW());
insert into chat_info values(27, 'shee', 'shee@example.com', 'Good night', NOW(), 'active', 17, 4, NOW(), NOW());
insert into chat_info values(28, 'sind', 'sind@example.com', 'See you', NOW(), 'inactive', 18, 3, NOW(), NOW());
insert into chat_info values(29, 'sinn', 'sinn@example.com', 'Take care', NOW(), 'active', 19, 5, NOW(), NOW());
insert into chat_info values(30, 'maya', 'maya@example.com', 'Good luck', NOW(), 'inactive', 20, 2, NOW(), NOW());
insert into chat_info values(31, 'sara', 'sara@example.com', 'Happy day', NOW(), 'active', 21, 4, NOW(), NOW());
insert into chat_info values(32, 'siri', 'siri@example.com', 'What\'s new?', NOW(), 'inactive', 22, 1, NOW(), NOW());
insert into chat_info values(33, 'kala', 'kala@example.com', 'See you later', NOW(), 'active', 23, 5, NOW(), NOW());
insert into chat_info values(34, 'kavya', 'kavya@example.com', 'Good morning', NOW(), 'inactive', 24, 2, NOW(), NOW());
insert into chat_info values(35, 'kaga', 'kaga@example.com', 'Nice to meet you', NOW(), 'active', 25, 3, NOW(), NOW());
insert into chat_info values(36, 'chinn', 'chinn@example.com', 'Take care', NOW(), 'active', 26, 4, NOW(), NOW());
insert into chat_info values(37, 'caya', 'caya@example.com', 'Good evening', NOW(), 'inactive', 27, 5, NOW(), NOW());
insert into chat_info values(38, 'siya', 'siya@example.com', 'See you soon', NOW(), 'active', 28, 1, NOW(), NOW());
insert into chat_info values(39, 'soya', 'soya@example.com', 'Goodbye', NOW(), 'inactive', 29, 2, NOW(), NOW());
insert into chat_info values(40, 'kiya', 'kiya@example.com', 'Take care', NOW(), 'active', 30, 3, NOW(), NOW());

select * from chat_info;

alter table chat_center modify status varchar(20) not null;

alter table chat_center add constraint unique_username unique(username);

alter table chat_center add constraint chk_rating check (rating between 1 and 5);

alter table chat_center add constraint chk_timestamp check (timestamp is not null);