create database airport1
use airport1

USE master;
GO
ALTER DATABASE airport1 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO
DROP DATABASE airport1;
GO

Create table airplane
	(Reg numeric(4) not null primary key,
	PlaneType numeric(2) not null,
	HangarNum numeric(2) not null);

	INSERT INTO airplane VALUES (4521,10, 1);
	INSERT INTO airplane VALUES (4522,11, 1);
	INSERT INTO airplane VALUES (4523,12, 2);
	INSERT INTO airplane VALUES (4524,13, 3);
	INSERT INTO airplane VALUES (4525,14, 3);
	INSERT INTO airplane VALUES (4526,15, 4);
	INSERT INTO airplane VALUES (4527,16, 4);
	INSERT INTO airplane VALUES (4528,17, 5);
	INSERT INTO airplane VALUES (4529,18,5);
	INSERT INTO airplane VALUES (4530,19, 6);
	INSERT INTO airplane VALUES (4531,20, 6);
	INSERT INTO airplane VALUES (4532,21, 6);
	INSERT INTO airplane VALUES (4533,22, 7);
	INSERT INTO airplane VALUES (4534,23, 7);
	INSERT INTO airplane VALUES (4535,24, 8);
	INSERT INTO airplane VALUES (4536,25, 10);
	INSERT INTO airplane VALUES (4537,26, 11);
	INSERT INTO airplane VALUES (4538,27, 12);
	INSERT INTO airplane VALUES (4539,28, 13);
	INSERT INTO airplane VALUES (4540,29, 14);
	INSERT INTO airplane VALUES (4541,20, 14);
	INSERT INTO airplane VALUES (4542,21, 7);
	INSERT INTO airplane VALUES (4543,22, 9);

select* from airplane 

Create table hangar
	(Num numeric(2) not null primary key,
	Location_ varchar(10) not null,
	Capacity numeric(3)not null);

INSERT INTO HANGAR VALUES (01, 'Karachi', 300);
INSERT INTO HANGAR VALUES (02, 'Karachi', 40);
INSERT INTO HANGAR VALUES (03, 'Karachi', 50);
INSERT INTO HANGAR VALUES (04, 'Islamabad', 15);
INSERT INTO HANGAR VALUES (05, 'Islamabad', 20);
INSERT INTO HANGAR VALUES (06, 'Islamabad', 30);
INSERT INTO HANGAR VALUES (07, 'RawalPindi', 15);
INSERT INTO HANGAR VALUES (08, 'RawalPindi', 30);
INSERT INTO HANGAR VALUES (09, 'Kamra', 20);
INSERT INTO HANGAR VALUES (10, 'Kamra', 30);
INSERT INTO HANGAR VALUES (11, 'Kamra', 10);
INSERT INTO HANGAR VALUES (12, 'Kamra', 50);
INSERT INTO HANGAR VALUES (13, 'Kamra', 70);
INSERT INTO HANGAR VALUES (14, 'Quetta', 80);
INSERT INTO HANGAR VALUES (15, 'Quetta', 100);
INSERT INTO HANGAR VALUES (16, 'Quetta', 40);
INSERT INTO HANGAR VALUES (17, 'Quetta', 50);
INSERT INTO HANGAR VALUES (18, 'Multan', 200);
INSERT INTO HANGAR VALUES (19, 'Multan', 40);
INSERT INTO HANGAR VALUES (20, 'Multan', 60);

select* from hangar

Create table PLANET
	(mname varchar(10) not null,
	Modelnum numeric(2) primary key not null,
	Capacity numeric(5) not null,
	Weight_inTons numeric (2) not null);

	INSERT INTO PLANET VALUES ('Cargo', 10, 10000, 20);
	INSERT INTO PLANET VALUES ('Militiary',11, 15000, 30);
	INSERT INTO PLANET VALUES ('Boeng',12, 19000, 40);
	INSERT INTO PLANET VALUES ('AirBus',13, 18000, 50);
	INSERT INTO PLANET VALUES ('Passenger',14, 16000, 30);
	INSERT INTO PLANET VALUES ('Jumbo Jet',15, 14000, 20);
	INSERT INTO PLANET VALUES ('Turbo Prop',16, 13000, 60);
	INSERT INTO PLANET VALUES ('VLJ', 17, 12000, 40);
	INSERT INTO PLANET VALUES ('Buisiness',18, 11000, 20);
	INSERT INTO PLANET VALUES ('Private',19, 9000, 20);
	INSERT INTO PLANET VALUES ('Twin',20, 5000, 60);
	INSERT INTO PLANET VALUES ('Aerobatic',21, 4000, 30);
	INSERT INTO PLANET VALUES ('Fighter',22, 20000, 20);
	INSERT INTO PLANET VALUES ('Amphibious',23, 23000, 40);
	INSERT INTO PLANET VALUES ('Embrarer',24, 34000, 50);
	INSERT INTO PLANET VALUES ('ATR',25, 78000, 60);
	INSERT INTO PLANET VALUES ('F-16',26, 45000, 70);
	INSERT INTO PLANET VALUES ('JF-17',27, 19000, 80);
	INSERT INTO PLANET VALUES ('F-15', 28, 7000, 90);
	INSERT INTO PLANET VALUES ('Mirage',29, 8000, 10);

	alter table airplane 
	ADD FOREIGN KEY (HANGARNUM) REFERENCES HANGAR;

	alter table airplane 
	ADD FOREIGN KEY (Planetype) REFERENCES Planet;

	select* from Planet 
	select * from airplane 
	select * from hangar 

	Create table Person
	(SSN numeric(9) not null primary key,
	FirstName varchar(10),
	LastName varchar(10),
	House numeric(2),
	Avenue varchar(255),
	City varchar(255),
	Country varchar(255),
	Phone_Num numeric(12),
	DoB date);

	
	INSERT INTO PERSON VALUES (123456789, 'Luqman', 'Ansari', 23, 'Shabir', 'Taxila', 'Pakistan', 3214565458, CONVERT(date,'25-OCT-2000'));
	INSERT INTO PERSON VALUES (123658978, 'Ejaz', 'Alvi', 45, 'Ahmad', 'Layyah', 'Pakistan', 3124456589, CONVERT(date,'12-SEP-1990'));
	INSERT INTO PERSON VALUES (458712569, 'Hamdan', 'Jamal', 25, 'Iqbal', 'Multan', 'Pakistan', 3126598564, CONVERT(date,'14-JAN-1998'));
	INSERT INTO PERSON VALUES (456985632, 'Arham', 'Ansari', 98, 'Jinnah', 'Islamabad', 'Pakistan', 3114569852, CONVERT(date,'17-FEB-1980'));
	INSERT INTO PERSON VALUES (785698523, 'Hashir', 'Ansari', 87, 'Civil', 'Wah', 'Pakistan', 3127896541, CONVERT(date,'26-SEP-1985'));
	INSERT INTO PERSON VALUES (458745852, 'Moiz', 'Ansari', 10, 'Westridge', 'Rawalpindi', 'Pakistan', 3104569852, CONVERT(date,'15-MAR-2010'));
	INSERT INTO PERSON VALUES (452369854, 'Shaheer', 'Haroon', 40, 'Shaheed', 'Islamabad', 'Pakistan', 3217458965, CONVERT(date,'14-JUL-1990'));
	INSERT INTO PERSON VALUES (653212547, 'Nehal', 'Fatima', 10, 'Main', 'Kamra', 'Pakistan', 3104569852, CONVERT(date,'13-JUN-2013'));

	INSERT INTO PERSON VALUES (713985264, 'Daniyal', 'Khan', 35, 'Quaid', 'Islamabad', 'Pakistan', 3114523658, CONVERT(date,'12-SEP-1995'));
	INSERT INTO PERSON VALUES (796521485, 'Ahmad', 'Ali', 68, 'Jahanzaib', 'Sawat', 'Pakistan', 3114569852, CONVERT(date,'10-MAY-1955'));
	INSERT INTO PERSON VALUES (789645236, 'Aimen', 'Gauhar', 45, 'Oxford', 'Florida', 'America', 3114569852, CONVERT(date,'09-JUN-1990'));
	INSERT INTO PERSON VALUES (456328971, 'Ayesha', 'Nasir', 35, 'Hockey', 'Karachi', 'Pakistan', 3114569852, CONVERT(date,'04-SEP-1995'));
	INSERT INTO PERSON VALUES (465823987, 'Moaz', 'Farrukh', 79, 'Main', 'Faislabad', 'Pakistan', 3114569854, CONVERT(date,'02-JAN-1944'));
	INSERT INTO PERSON VALUES (746589325, 'Nouman', 'Amjad', 05, 'Quaid', 'Rawalpindi', 'Pakistan', 3112547410, CONVERT(date,'01-FEB-2018'));
	INSERT INTO PERSON VALUES (712547963, 'Nouman', 'Hafeez', 45, 'Iqbal', 'Rawalpindi', 'Pakistan', 3115588554, CONVERT(date,'12-NOV-1990'));

	INSERT INTO PERSON VALUES (713698564, 'Fariz', 'Ahmad', 35, 'Civil', 'Taxila', 'Pakistan', 3114745666, CONVERT(date,'25-SEP-1998'));
	INSERT INTO PERSON VALUES (463975136, 'Hasnain', 'Haider', 24, 'Academy', 'Karachi', 'Pakistan', 3214566666, CONVERT(date,'14-APR-1997'));
	INSERT INTO PERSON VALUES (895646521, 'Hayat', 'Sikander', 24, 'Mukka', 'Karachi', 'Pakistan', 3217458888, CONVERT(date,'29-OCT-1995'));
	INSERT INTO PERSON VALUES (120325740, 'Hassan', 'Mustafa', 75, 'Stenford', 'London', 'UK', 3124444754, CONVERT(date,'27-DEC-1990'));
	INSERT INTO PERSON VALUES (701036985, 'Awais', 'Nadeem', 35, 'Utisa', 'Moscow', 'Russia', 3126565444, CONVERT(date,'22-DEC-1993'));

	INSERT INTO Person VALUES (111111111, 'John', 'Smith', 1, 'Main St', 'New York', 'USA', 1234567890, CONVERT(date,'1990-01-01'));
	INSERT INTO Person VALUES (222222222, 'Jane', 'Doe', 2, 'Maple Ave', 'Los Angeles', 'USA', 2345678901, CONVERT(date,'1991-02-02'));
	INSERT INTO Person VALUES (333333333, 'Bob', 'Johnson', 3, 'Oak St', 'Chicago', 'USA', 3456789012, CONVERT(date,'1992-03-03'));
	INSERT INTO Person VALUES (444444444, 'Sara', 'Lee', 4, 'Pine Rd', 'Houston', 'USA', 4567890123, CONVERT(date,'1993-04-04'));
	INSERT INTO Person VALUES (555555555, 'Tom', 'Jones', 5, 'Cedar Blvd', 'Philadelphia', 'USA', 5678901234, CONVERT(date,'1994-05-05'));
	INSERT INTO Person VALUES (666666666, 'Emily', 'Brown', 6, 'Birch St', 'Phoenix', 'USA', 6789012345, CONVERT(date,'1995-06-06'));
	INSERT INTO Person VALUES (777777777, 'Adam', 'Davis', 7, 'Spruce Ln', 'San Antonio', 'USA', 7890123456, CONVERT(date,'1996-07-07'));
	INSERT INTO Person VALUES (888888888, 'Karen', 'Wilson', 8, 'Elm St', 'San Diego', 'USA', 8901234567, CONVERT(date,'1997-08-08'));
	INSERT INTO Person VALUES (999999999, 'Mike', 'Garcia', 9, 'Hickory Ave', 'Dallas', 'USA', 9012345678, CONVERT(date,'1998-09-09'));
	INSERT INTO Person VALUES (111222333, 'Linda', 'Martinez', 10, 'Cherry St', 'Austin', 'USA', 0123456789, CONVERT(date,'1999-10-10'));
	INSERT INTO Person VALUES (222333444, 'Kevin', 'Jackson', 11, 'Sycamore Rd', 'Seattle', 'USA', 1234509876, CONVERT(date,'2000-11-11'));
	INSERT INTO Person VALUES (333444555, 'Rachel', 'Taylor', 12, 'Chestnut Ave', 'Denver', 'USA', 2345678910, CONVERT(date,'2001-12-12'));
	INSERT INTO Person VALUES (444555666, 'Patrick', 'Anderson', 13, 'Walnut Blvd', 'Miami', 'USA', 3456789012, CONVERT(date,'2002-01-13'));
	INSERT INTO Person VALUES (555666777, 'Kelly', 'White', 14, 'Spruce St', 'Tampa', 'USA', 4567890123, CONVERT(date,'2003-02-14'));
	INSERT INTO Person VALUES (666777888, 'Brian', 'Martin', 15, 'Maple Ln', 'Atlanta', 'USA', 5678901234, CONVERT(date,'2004-03-15'));
	INSERT INTO Person VALUES (777888999, 'Lisa', 'Lee', 16, 'Pine St', 'Boston', 'USA', 6789012345, CONVERT(date,'2005-04-16'));

	
	go
	create view Person_v as 
	select SSN, FirstName + ' ' + LastName as PName, 'House# ' + convert(varchar,House) + ', ' + Avenue + ' Street, ' + City + ', ' + Country as PAddress, Phone_Num,
	FLOOR(DATEDIFF(DAY, DoB, GETDATE()) / 365.25) as Age
	from Person
	go
	-- ---------------------------
	--drop view Person_v

	select * from Person_v;


	Create table Corp
	(CName varchar(20) not null primary key,
	Avenue varchar(255) not null,
	City varchar(255) not null,
	Country varchar(255) not null,
	Phone_Num numeric(12) not null);

	INSERT INTO Corp VALUES ( 'Boeing', '5th Avenue', 'New York', 'USA', 3124444754);
	INSERT INTO Corp VALUES ( 'Airbus', 'Champs-Elysees', 'Paris', 'France', 3124444755);
	INSERT INTO Corp VALUES ( 'Bombardier', 'Bay Street', 'Toronto', 'Canada', 3124444756);
	INSERT INTO Corp VALUES ( 'Embraer', 'Avenida Brigad', 'São Paulo', 'Brazil', 3124444757);
	INSERT INTO Corp VALUES ( 'Cessna', 'Kansas Avenue', 'Kansas', 'USA', 3124444758);
	INSERT INTO Corp VALUES ( 'Gulfstream', 'Gulfstream Road', 'Georgia', 'USA', 3124444759);
	INSERT INTO Corp VALUES ( 'Dassault', 'Chaussée', 'Paris', 'France', 3124444760);
	INSERT INTO Corp VALUES ( 'Hawker Beechcraft', 'Beechcraft Drive', 'Kansas', 'USA', 3124444761);
	INSERT INTO Corp VALUES ( 'Piaggio Aero', 'Viale Gen', 'Genoa', 'Italy', 3124444762);
	INSERT INTO Corp VALUES ( 'Pilatus', 'Pilatus', 'Stans', 'Switzerland', 3124444763);
	INSERT INTO Corp VALUES ('NetJets', 'Wall Street', 'New York', 'USA', 3124444764);
	INSERT INTO Corp VALUES ('FlexJets', 'Fifth Avenue', 'New York', 'USA', 3124444765);
	INSERT INTO Corp VALUES ('AirSial', 'Jinnah Avenue', 'Karachi', 'Pakistan', 3124444766);
	INSERT INTO Corp VALUES ('Emirate', 'Sheikh Zayed Road', 'Dubai', 'UAE', 3124444767);
	INSERT INTO Corp VALUES ('FlyJinnah', 'Shahrah-e-Faisal', 'Karachi', 'Pakistan', 3124444768);
	INSERT INTO Corp VALUES ('BlueAir', 'Calea Bucureștilor', 'Bucharest', 'Romania', 3124444769);
	INSERT INTO Corp VALUES ('Honda', 'Minami-Aoyama', 'Tokyo', 'Japan', 3124444770);
	INSERT INTO Corp VALUES ('PIA', 'Jinnah Terminal Road', 'Karachi', 'Pakistan', 3124444771);
	INSERT INTO Corp VALUES ('Plagio', 'García Lorca', 'Madrid', 'Spain', 3124444772);
	INSERT INTO Corp VALUES ('Plattus', 'Rue de la Loi', 'Brussels', 'Belgium', 3124444773);
	INSERT INTO Corp VALUES ('Toyota', 'Toyota-Cho', 'Toyota', 'Japan', 3124444774);
	INSERT INTO Corp VALUES ('Sonata', 'Yeok', 'Seoul', 'South Korea', 3124444775);
	INSERT INTO Corp VALUES ('Chin-Chi', 'Zhongshan Road', 'Taipei', 'Taiwan', 3124444776);
	INSERT INTO Corp VALUES ('Qatar', 'Al Matar Street', 'Doha', 'Qatar', 3124444777);
	INSERT INTO Corp VALUES ('IqbalAir', 'Tariq Road', 'Karachi', 'Pakistan', 3124444778);
	
	select * from Corp 

	go
	create view Corp_v as 
	select CName, Avenue + ', ' + City + ', ' + Country as CAddress, Phone_Num
	from Corp
	go

	select* from corp_v
	
	create table OWNER(
	AirplaneID numeric(4) primary key foreign key references airplane,
	Pdate date not null,
	PersonID numeric(9) default NULL foreign key references Person,
	CorpotateName varchar(20) default NULL foreign key references Corp
	)


	--------------===================================================================================
	INSERT INTO OWNER Values(4521, CONVERT(date,'01-JAN-2011'), 123456789, NULL);
	INSERT INTO OWNER Values(4522, CONVERT(date,'02-JAN-2012'), 123658978, NULL);
	INSERT INTO OWNER Values(4523, CONVERT(date,'03-JAN-2013'), 458712569, NULL);
	INSERT INTO OWNER Values(4524, CONVERT(date,'04-JAN-2013'), 458745852, NULL);
	INSERT INTO OWNER Values(4525, CONVERT(date,'05-JAN-2012'), 456985632, NULL);
	INSERT INTO OWNER Values(4526, CONVERT(date,'06-JAN-2011'), 653212547, NULL);

	INSERT INTO OWNER Values(4527, CONVERT(date,'07-JAN-2014'), NULL, 'Boeing');
	INSERT INTO OWNER Values(4528, CONVERT(date,'08-JAN-2015'), NULL, 'Airbus');
	INSERT INTO OWNER Values(4529, CONVERT(date,'09-JAN-2022'), NULL, 'Bombardier');
	INSERT INTO OWNER Values(4530, CONVERT(date,'10-JAN-2013'), NULL, 'Dassault');
	INSERT INTO OWNER Values(4531, CONVERT(date,'11-JAN-2015'), NULL, 'Qatar');
	INSERT INTO OWNER Values(4532, CONVERT(date,'12-JAN-2017'), NULL, 'FlyJinnah');
	INSERT INTO OWNER Values(4533, CONVERT(date,'13-JAN-2018'), NULL, 'PIA');
	INSERT INTO OWNER Values(4534, CONVERT(date,'14-JAN-2016'), NULL, 'IqbalAir');
	INSERT INTO OWNER Values(4541, CONVERT(date,'14-Oct-2016'), NULL, 'IqbalAir');
	INSERT INTO OWNER Values(4542, CONVERT(date,'23-SEp-2016'), NULL, 'IqbalAir');
	INSERT INTO OWNER Values(4543, CONVERT(date,'12-JAN-2016'), NULL, 'IqbalAir');

	INSERT INTO OWNER Values(4535, CONVERT(date,'15-JAN-2012'), NULL, 'Dassault');
	INSERT INTO OWNER Values(4536, CONVERT(date,'16-JAN-2014'), NULL, 'Toyota');
	INSERT INTO OWNER Values(4537, CONVERT(date,'17-JAN-2015'), NULL, 'Plagio');
	INSERT INTO OWNER Values(4538, CONVERT(date,'18-JAN-2012'), 123658978, NULL);
	INSERT INTO OWNER Values(4539, CONVERT(date,'19-JAN-2011'), 123456789, NULL);
	INSERT INTO OWNER Values(4540, CONVERT(date,'20-JAN-2010'), 452369854, NULL);

	select * from owner


	create Table PILOT(
	Lic_num numeric(3) Not null primary key,
	Restrictions numeric(3) default NULL, 
	SSN numeric(9) foreign key references Person);

	INSERT INTO Pilot VALUES (100, NULL, 222222222);
	INSERT INTO Pilot VALUES (101, 1, 333333333);
	INSERT INTO Pilot VALUES (102, NULL, 444444444);
	INSERT INTO Pilot VALUES (103, 3, 555555555);
	INSERT INTO Pilot VALUES (104, NULL, 666666666);
	INSERT INTO Pilot VALUES (105, 4, 777777777);
	INSERT INTO Pilot VALUES (106, NULL, 888888888);
	INSERT INTO Pilot VALUES (107, 5, 999999999);
	INSERT INTO Pilot VALUES (108, NULL, 111222333);
	INSERT INTO Pilot VALUES (109, 6, 222333444);
	INSERT INTO Pilot VALUES (110, NULL, 333444555);
	INSERT INTO Pilot VALUES (111, 5, 444555666);
	INSERT INTO Pilot VALUES (112, NULL, 555666777);
	INSERT INTO Pilot VALUES (113, 9, 666777888);
	INSERT INTO Pilot VALUES (114, 20, 777888999);
	INSERT INTO Pilot VALUES (115, 10, 111111111);

	INSERT INTO Pilot VALUES(116, NULL, 713985264);
	INSERT INTO Pilot VALUES(117, 10, 796521485);
	INSERT INTO Pilot VALUES(118, NULL, 789645236);
	INSERT INTO Pilot VALUES(119, 12, 456328971);
	INSERT INTO Pilot VALUES(120, NULL, 465823987);
	INSERT INTO Pilot VALUES(121, 23, 746589325);
	INSERT INTO Pilot VALUES(122, NULL, 712547963);
	INSERT INTO Pilot VALUES(123, 22, 713698564);
	INSERT INTO Pilot VALUES(124, 25, 463975136);
	INSERT INTO Pilot VALUES(125, NULL, 895646521);
	INSERT INTO Pilot VALUES(126, 30, 120325740);
	INSERT INTO Pilot VALUES(127, NULL, 701036985);


	 
	create table flies(
	Lic_num numeric(3) foreign key references PILOT,
	PlaneType numeric(2) foreign key references Planet,
	primary key(Lic_num, PlaneType));

	insert into flies values(100, 21);
	insert into flies values(101, 22);
	insert into flies values(102, 23);
	insert into flies values(103, 25);
	insert into flies values(104, 28);
	insert into flies values(105, 28);
	insert into flies values(106, 28);
	insert into flies values(107, 29);
	insert into flies values(108, 29);
	insert into flies values(109, 29);
	insert into flies values(110, 29);
	insert into flies values(111, 10);
	insert into flies values(112, 11);
	insert into flies values(113, 12);
	insert into flies values(114, 13);
	insert into flies values(115, 15);
	insert into flies values(116, 15);
	insert into flies values(117, 15);
	insert into flies values(118, 16);
	insert into flies values(119, 16);
	insert into flies values(120, 16);
	insert into flies values(112, 17);
	insert into flies values(113, 17);
	insert into flies values(114, 17);
	insert into flies values(115, 18);
	insert into flies values(116, 19);
	insert into flies values(117, 19);
	insert into flies values(118, 20);
	insert into flies values(119, 23);
	insert into flies values(120, 25);
	insert into flies values(121, 24);
	insert into flies values(122, 13);
	insert into flies values(123, 12);
	insert into flies values(124, 22);
	insert into flies values(125, 10);
	insert into flies values(126, 11);
	insert into flies values(127, 29);

	insert into flies values(100, 29);
	insert into flies values(101, 10);
	insert into flies values(102, 11);
	insert into flies values(103, 12);
	insert into flies values(104, 13);
	insert into flies values(105, 15);
	insert into flies values(106, 15);
	insert into flies values(107, 15);
	insert into flies values(108, 16);
	insert into flies values(109, 16);

	insert into flies values(100, 25);
	insert into flies values(101, 24);
	insert into flies values(102, 13);
	insert into flies values(103, 11);
	insert into flies values(104, 22);
	insert into flies values(105, 10);
	insert into flies values(106, 11);
	insert into flies values(107, 20);

	select* from flies 

	create table EMPLOYEE(
	SSN numeric(9) foreign key references Person,
	Sal numeric(7,2) not null ,
	eshift varchar(9) not null,
	primary key(SSN));

	INSERT INTO EMPLOYEE VALUES (123456789, 54000, 'Day');
	INSERT INTO EMPLOYEE VALUES (458712569, 12000, 'Night');
	INSERT INTO EMPLOYEE VALUES (456985632, 78000, 'Day');
	INSERT INTO EMPLOYEE VALUES (785698523, 45000, 'Night');
	INSERT INTO EMPLOYEE VALUES (458745852, 97000, 'Day');
	INSERT INTO EMPLOYEE VALUES (452369854, 54000, 'Night');
	INSERT INTO EMPLOYEE VALUES (653212547, 12000, 'Day');
	INSERT INTO EMPLOYEE VALUES (713985264, 45000,'Night');
	INSERT INTO EMPLOYEE VALUES (796521485, 78000, 'Day');
	INSERT INTO EMPLOYEE VALUES (789645236, 65000,  'Night');
	INSERT INTO EMPLOYEE VALUES (456328971, 31000, 'Day');
	-- ==================================================================================================== |


	--drop table employee

	-- insert more 
	select* from EMPLOYEE


	create table working(
	Plane numeric(2) foreign key references Planet,
	EmployeeID numeric(9) foreign key references Employee,
	primary key(Plane, EmployeeID));

	insert into working values(29,123456789);
	insert into working values(28,123456789);
	insert into working values(25,123456789);
	insert into working values(25,785698523);
	insert into working values(25,456328971);
	insert into working values(22,713985264);
	insert into working values(22,785698523);
	insert into working values(21,785698523);
	insert into working values(24,713985264);
	insert into working values(14, 785698523);
	insert into working values(14,456328971);
	insert into working values(13, 785698523);
	insert into working values(12,785698523);
	insert into working values(10,123456789);
	insert into working values(18,713985264);
	insert into working values(11,458745852);
	insert into working values(17,458745852);
	insert into working values(19,456328971);
	insert into working values(20,785698523);
	insert into working values(21,123456789);
	---------------------

	create table Services(
	A_RegNo numeric(4) foreign key references airplane,
	SDate date not null,
	STime numeric(2) not null,
	primary key(SDate, A_regNo));
	
	INSERT into SERVICES values(4521, convert(date,'01-01-2020'), 2);
	INSERT into SERVICES values(4522, convert(date,'02-01-2022'), 3);
	INSERT into SERVICES values(4523, convert(date,'03-03-2020'), 4);
	INSERT into SERVICES values(4524, convert(date,'04-04-2021'), 5);
	INSERT into SERVICES values(4525, convert(date,'05-05-2021'), 7);
	INSERT into SERVICES values(4526, convert(date,'05-05-2021'), 5);
	INSERT into SERVICES values(4527, convert(date,'05-05-2021'), 3);
	INSERT into SERVICES values(4528, convert(date,'12-04-2021'), 5);
	INSERT into SERVICES values(4529, convert(date,'10-09-2020'), 6);
	INSERT into SERVICES values(4530, convert(date,'11-11-2020'), 8);
	INSERT into SERVICES values(4531, convert(date,'12-12-2021'), 6);
	INSERT into SERVICES values(4532, convert(date,'9-21-2021'), 4);
	INSERT into SERVICES values(4533, convert(date,'5-22-2023'), 6);
	INSERT into SERVICES values(4534, convert(date,'10-13-2023'), 8);
	INSERT into SERVICES values(4535, convert(date,'12-24-2022'), 9);
	INSERT into SERVICES values(4536, convert(date,'2-17-2022'), 7);
	INSERT into SERVICES values(4537, convert(date,'2-23-2022'), 5);
	INSERT into SERVICES values(4538, convert(date,'3-16-2021'), 3);
	INSERT into SERVICES values(4539, convert(date,'2-23-2021'), 2);
	INSERT into SERVICES values(4540, convert(date,'1-11-2021'), 1);
	INSERT into SERVICES values(4541, convert(date,'3-16-2021'), 3);
	INSERT into SERVICES values(4542, convert(date,'2-23-2021'), 2);
	INSERT into SERVICES values(4543, convert(date,'1-11-2021'), 1);
	
	select* from Services 

	
	create table Mantain(
	EmpSSN numeric(9) foreign key references Employee,
	A_RegNo numeric(4) foreign key references airplane,
	SDate date,
	foreign key(SDate, A_regNo) references Services(SDate, A_RegNo),
	primary key(SDate, A_regNo));

	INSERT into mantain values(123456789, 4521, convert(date,'01-01-2020'));
	INSERT into mantain values(785698523, 4522, convert(date,'02-01-2022'));
	INSERT into mantain values(123456789, 4523, convert(date,'03-03-2020'));
	INSERT into mantain values(456328971, 4524, convert(date,'04-04-2021'));
	INSERT into mantain values(713985264, 4525, convert(date,'05-05-2021'));
	INSERT into mantain values(785698523, 4526, convert(date,'05-05-2021'));
	INSERT into mantain values(456328971, 4527, convert(date,'05-05-2021'));
	INSERT into mantain values(713985264, 4528, convert(date,'12-04-2021'));
	INSERT into mantain values(123456789, 4529, convert(date,'10-09-2020'));
	INSERT into mantain values(785698523, 4530, convert(date,'11-11-2020'));
	INSERT into mantain values(123456789, 4531, convert(date,'12-12-2021'));
	INSERT into mantain values(456328971, 4532, convert(date,'9-21-2021'));
	INSERT into mantain values(458745852, 4533, convert(date,'5-22-2023'));
	INSERT into mantain values(123456789, 4534, convert(date,'10-13-2023'));
	INSERT into mantain values(713985264, 4535, convert(date,'12-24-2022'));
	INSERT into mantain values(458745852, 4536, convert(date,'2-17-2022'));
	INSERT into mantain values(785698523, 4537, convert(date,'2-23-2022'));
	INSERT into mantain values(713985264, 4538, convert(date,'3-16-2021'));
	INSERT into mantain values(458745852, 4539, convert(date,'2-23-2021'));
	INSERT into mantain values(456328971, 4540, convert(date,'1-11-2021'));
	INSERT into mantain values(456328971, 4541, convert(date,'3-16-2021'));
	INSERT into mantain values(785698523, 4542, convert(date,'2-23-2021'));
	INSERT into mantain values(458745852, 4543, convert(date,'1-11-2021'));
	 
	 create table Under_Mantainance(
	 A_RegNo numeric(4) primary key foreign key references airplane,
	 status_ varchar(5) null
	 );
	 
	INSERT into under_mantainance values(4521, NULL);
	INSERT into under_mantainance values(4522, 'YES');
	INSERT into under_mantainance values(4523, NULL);
	INSERT into under_mantainance values(4524, 'YES');
	INSERT into under_mantainance values(4525, 'YES');
	INSERT into under_mantainance values(4526, 'YES');
	INSERT into under_mantainance values(4527, NULL);
	INSERT into under_mantainance values(4528, 'YES');
	INSERT into under_mantainance values(4529, 'YES');
	INSERT into under_mantainance values(4530, NULL);
	INSERT into under_mantainance values(4531, 'YES');
	INSERT into under_mantainance values(4532, 'YES');
	INSERT into under_mantainance values(4533, 'YES');
	INSERT into under_mantainance values(4534, NULL);
	INSERT into under_mantainance values(4535, 'YES');
	INSERT into under_mantainance values(4536, 'YES');
	INSERT into under_mantainance values(4537, NULL);
	INSERT into under_mantainance values(4538, NULL);
	INSERT into under_mantainance values(4539, 'YES');
	INSERT into under_mantainance values(4540, 'YES');
	INSERT into under_mantainance values(4541, 'YES');
	INSERT into under_mantainance values(4542, NULL);
	INSERT into under_mantainance values(4543, NULL);