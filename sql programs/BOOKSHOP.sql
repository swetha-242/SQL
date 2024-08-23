create database BOOKDATA;
use BOOKDATA;

create table books (book_id int primary key,title varchar(255) not null,author varchar(100) not null,genre varchar(50),published_year year,isbn varchar(20) unique not null,
gender varchar(10),age bigint,houseNo bigint,address varchar(10));
select * from books;
create table members (member_id int primary key,first_name varchar(50) not null,last_name varchar(50) not null,email varchar(100) unique not null,phone_number varchar(15),membership_start_date date,
member_year year,age bigint,member_location varchar(10),is_good boolean);
select * from members;
create table borrow_records (borrow_id int primary key,book_id int,member_id int,borrow_date date not null,return_date date,due_date date not null,book_rating int,book_good boolean,book_published_location varchar(10),book_years bigint,constraint fk_book_id foreign key (book_id) references books(book_id),
constraint fk_member_id foreign key (member_id) references members(member_id));
select * from borrow_records;
create table staff (staff_id int primary key,first_name varchar(50) not null,last_name varchar(50) not null,position varchar(50) not null,email varchar(100) unique not null,hire_date date);
select * from staff;

insert into books values(1, 'The God of Small Things', 'Arundhati Roy', 'Fiction', 1997, '9780143028574','male',30,02,'bengaluru');
insert into books values(2, 'A Suitable Boy', 'Vikram Seth', 'Historical Fiction', 1993, '9780679738713','female',20,03,'bengaluru');
insert into books values(3, 'Midnight’s Children', 'Salman Rushdie', 'Fiction', 1981, '9780099578512','female',40,04,'shivamogga');
insert into books values(4, 'The White Tiger', 'Aravind Adiga', 'Fiction', 2008, '9781416562603','female',22,05,'belgaum');
insert into books values(5, 'Train to Pakistan', 'Khushwant Singh', 'Historical Fiction', 1956, '9780143065881','male',33,06,'hubli');
insert into books values(6, 'The Inheritance of Loss', 'Kiran Desai', 'Fiction', 2006, '9780802142818','female',55,07,'mangalore');
insert into books values(7, 'Interpreter of Maladies', 'Jhumpa Lahiri', 'Short Stories', 1999, '9780395927205','male',44,08,'china');
insert into books values(8, 'The Guide', 'RK Narayan', 'Fiction', 1958, '9788185986005','male',30,09,'dubai');
insert into books values(9, 'Gitanjali', 'Rabindranath Tagore', 'Poetry', 1910, '9788129104630','female',32,10,'france');
insert into books values(10, 'Godan', 'Munshi Premchand', 'Fiction', 1936, '9788171674053','male',56,11,'davangere');
insert into books values(11, 'Malgudi Days', 'RK Narayan', 'Short Stories', 1943, '9788185986173','female',70,12,'koppala');
insert into books values(12, 'The Hungry Tide', 'Amitav Ghosh', 'Fiction', 2004, '9780618711666','female',66,13,'kalburgi');
insert into books values(13, 'The Glass Palace', 'Amitav Ghosh', 'Historical Fiction', 2000, '9780375758775','male',76,14,'honnara');
insert into books values(14, 'An Equal Music', 'Vikram Seth', 'Romance', 1999, '9780375709241','female',89,15,'nagasandra');
insert into books values(15, 'The Discovery of India', 'Jawaharlal Nehru', 'History', 1946, '9780143031033','male',43,16,'hoskeralli');

insert into members values(1, 'Amita', 'Patel', 'amitpatel@gmailcom', '9812345678', '2024-01-01',1945,40,'bengaluru',true);
insert into members values(2, 'Priya', 'Raj', 'priyaraj12@gmailcom', '9823456789', '2024-02-08',2001,30,'belgavi',true);
insert into members values(3, 'Rajesh', 'Surya', 'rajeshsurya32@gmailcom', '9834567890', '2024-03-07',2012,23,'hubli',false);
insert into members values(4, 'Anjali', 'naik', 'anjalinaik@gmailcom', '9845678901', '2024-04-11',1950,44,'gulbarga',true);
insert into members values(5, 'Vikas', 'Gowda', 'vikasgowd@gmailcom', '9856789012', '2024-05-21',1965,56,'bagevadi',false);
insert into members values(6, 'Meena', 'Iyer', 'meenaiyer@gmailcom', '9867890123', '2023-06-12',1967,32,'dharwad',false);
insert into members values(7, 'Suresh', 'Kumar', 'sureshkumar@gmailcom', '9878901234', '2023-07-11',1988,20,'shimoga',false);
insert into members values(8, 'Divya', 'Rao', 'divyarao@gmailcom', '9889012345', '2023-08-09',1999,56,'thukur',true);
insert into members values(9, 'Neha', 'Desai', 'nehadesai@gmailcom', '9890123456', '2023-09-05',2000,66,'mangalore',false);
insert into members values(10, 'Ankit', 'Menon', 'ankitmenon@gmailcom', '9901234567', '2023-10-03',2020,54,'bidar',true);
insert into members values(11, 'Lakshmi', 'Naidu', 'lakshminaidu@gmailcom', '9912345678', '2023-11-02',2021,67,'hampi',false);
insert into members values(12, 'Ravi', 'Verma', 'raviverma@gmailcom', '9923456789', '2023-12-07',2017,78,'usa',false);
insert into members values(13, 'Pooja', 'Joshi', 'poojajoshi@gmailcom', '9934567890', '2024-01-08',2014,88,'hongkong',true);
insert into members values(14, 'Sunil', 'Chauhan', 'sunilchauhan@gmailcom', '9945678901', '2024-02-06',2022,66,'china',true);
insert into members values(15, 'Kavita', 'Shah', 'kavitashahw@gmailcom', '9956789012', '2024-03-07',2024,70,'dubai',false);

insert into borrow_records values(1, 1, 1, '2024-01-01', NULL, '2024-01-15',5,true,'shimoga',30);
insert into borrow_records values
(2, 2, 2, '2024-01-05', '2024-01-12', '2024-01-19',5,true,'shimoga',30),
(3, 3, 3, '2024-01-10', NULL, '2024-01-24',4,true,'hassan',23),
(4, 4, 4, '2024-01-15', '2024-01-22', '2024-01-29',2,false,'ballary',20),
(5, 5, 5, '2024-01-20', NULL, '2024-02-03',1,true,'hubli',10),
(6, 6, 6, '2024-01-25', NULL, '2024-02-08',3,false,'kolar',3),
(7, 7, 7, '2024-01-30', '2024-02-06', '2024-02-13',4,false,'dharwad',4),
(8, 8, 8, '2024-02-05', NULL, '2024-02-19',2,true,'dubai',24),
(9, 9, 9, '2024-02-10', NULL, '2024-02-24',5,false,'usa',12),
(10, 10, 10, '2024-02-15', NULL, '2024-03-01',3,false,'china',16),
(11, 11, 11, '2024-02-20', NULL, '2024-03-05',2,true,'davangere',19),
(12, 12, 12, '2024-02-25', '2024-03-04', '2024-03-11',4,false,'mangalore',40),
(13, 13, 13, '2024-03-01', NULL, '2024-03-15',1,true,'mandya',50),
(14, 14, 14, '2024-03-05', NULL, '2024-03-19',5,false,'bidar',44),
(15, 15, 15, '2024-03-10', NULL, '2024-03-24',3,true,'mysore',67);

insert into staff values
(1, 'Ramya', 'Mohan', 'Librarian', 'ramyamohan@gmailcom', '2022-05-01'),
(2, 'Sangeeta', 'Shekar', 'Assistant Librarian', 'sangeetashekar@gmailcom', '2022-06-01'),
(3, 'Ananya', 'Kulkarni', 'Library Assistant', 'ananyakulkarni@gmailcom', '2022-07-01'),
(4, 'Vandana', 'Rao', 'Library Clerk', 'vandanarao@gmailcom', '2022-08-01'),
(5, 'Manoj', 'Patel', 'Library Technician', 'manojpatel@gmailcom', '2022-09-01'),
(6, 'Geeta', 'Deshmukh', 'Librarian', 'geetadeshmukh@gmailcom', '2022-10-01'),
(7, 'Prakash', 'Jain', 'Assistant Librarian', 'prakashjain@gmailcom', '2022-11-01'),
(8, 'Rekha', 'Bhat', 'Library Assistant', 'rekhabhatt@gmailcom', '2022-12-01'),
(9, 'Ashok', 'Shiva', 'Library Clerk', 'ashokshiva@gmailcom', '2023-01-01'),
(10, 'Vikas', 'Pande', 'Library Technician', 'vikaspandey@gmailcom', '2023-02-01'),
(11, 'Anita', 'Naik', 'Librarian', 'anitanaik@gmailcom', '2023-03-01'),
(12, 'Mahesh', 'Chauhan', 'Assistant Librarian', 'maheshchauhan@gmailcom', '2023-04-01'),
(13, 'Ritu', 'Mesta', 'Library Assistant', 'ritumesta@gmailcom', '2023-05-01'),
(14, 'Amit', 'Bhargava', 'Library Clerk', 'amitbhargava@gmailcom', '2023-06-01'),
(15, 'Sunita', 'Kumari', 'Library Technician', 'sunitakumari@gmailcom', '2023-07-01');

/* to delete the foreign key and foreign key the syntax is*/
/*alter table table_name drop constraint column_name*/
alter table borrow_records drop constraint fk_member_id;

/*alter table table_name drop foreign key  column_name*/
alter table borrow_records drop foreign key fk_member_id;