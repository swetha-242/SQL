create database marketInformation;
use marketInformation;
create table market_info (MarketID INT unique,MarketName VARCHAR(100) not null ,City VARCHAR(50) not null,District VARCHAR(50) ,State VARCHAR(50) ,
    PinCode VARCHAR(10),ContactNumber bigint unique,MarketType VARCHAR(50),OpeningDate DATE,Capacity INT, constraint capaci_chk check (Capacity>900),Ratings int, constraint rating_chk check (Ratings>2));

select * from market_info;
insert into market_info values(1,'KR Market', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560002', 8099555040, 'Wholesale', '1928-01-01', 1000, 4),
(2,'Yeshwanthpur Market', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560022', 7895550141, 'Retail', '1980-05-15', 1500, 3),
(3,'Jayanagar 4th Block Market', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560068', 9805550142, 'Wholesale', '1975-07-20', 2000, 3),
(4,'Russell Market', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560051', 8015550143, 'Retail', '1927-11-01', 1000, 3),
(5,'Kalasi Palya Market', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560002', 0805550144, 'Wholesale', '1960-10-10', 2500, 4),
(6,'Madiwala Market', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560041', 0805550145, 'Retail', '1970-04-12', 1250, 3),
(7,'Mangalore Central Market', 'Mangalore', 'Dakshina Kannada', 'Karnataka', '575001', 08245550146, 'Wholesale', '1965-03-25', 1100, 3),
(8,'Udupi Market', 'Udupi', 'Udupi', 'Karnataka', '576101', 08205550147, 'Retail', '1950-08-30', 1300, 3),
(9,'Shimoga Market', 'Shimoga', 'Shivamogga', 'Karnataka', '577201', 081825550148, 'Wholesale', '1968-09-18', 2350, 3),
(10,'Hubli Market', 'Hubli', 'Dharwad', 'Karnataka', '580020', 08365550149, 'Retail', '1975-12-05', 1400, 3),
(11,'Dharwad Market', 'Dharwad', 'Dharwad', 'Karnataka', '580001', 0836-5550150, 'Wholesale', '1955-02-17', 2300, 4),
(12,'Bijapur Market', 'Bijapur', 'Bijapur', 'Karnataka', '586101', 08352-555015, 'Retail', '1962-05-22', 1250, 5),
(13,'Belgaum Market', 'Belgaum', 'Belgaum', 'Karnataka', '590001', 0831-5550152, 'Wholesale', '1958-11-13', 1350, 4),
(14,'Gulbarga Market', 'Gulbarga', 'Kalaburagi', 'Karnataka', '585101', 08472-5550153, 'Retail', '1963-06-16', 1300, 3),
(15,'Bellary Market', 'Bellary', 'Bellary', 'Karnataka', '583101', 08392-5550154, 'Wholesale', '1957-07-21', 2400, 4),
(16,'Davangere Market', 'Davangere', 'Davangere', 'Karnataka', '577001', 08192-555015, 'Retail', '1969-09-14', 2350, 4),
(17,'Tumkur Market', 'Tumkur', 'Tumkur', 'Karnataka', '572101', 0816-5550156, 'Wholesale', '1974-03-10', 1300, 4),
(18,'Mysore Market', 'Mysore', 'Mysore', 'Karnataka', '570001', 0821-5550157, 'Retail', '1966-05-26', 3400, 4),
(19,'Hassan Market', 'Hassan', 'Hassan', 'Karnataka', '573201', 08172-5550158, 'Wholesale', '1972-08-19', 2250, 3),
(20,'Mandya Market', 'Mandya', 'Mandya', 'Karnataka', '571401', 08232-5550159, 'Retail', '1973-01-30', 2300, 3);


alter table market_info modify column State VARCHAR(50) not null;
alter table market_info add constraint  MarketName_uni unique ( MarketName ); 
alter table market_info add constraint cap_chk check (Capacity>900 and Capacity<=4000);
alter table market_info add constraint rat_chk check (Capacity>900 and Ratings<=5);

