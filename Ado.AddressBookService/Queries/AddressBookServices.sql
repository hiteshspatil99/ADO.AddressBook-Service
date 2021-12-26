--UC1 Creating Database

CREATE DATABASE AddressBookService;
  
  USE AddressBookService;


  --UC2 Creating Table With Resp. Parameter
  
  CREATE TABLE Address_Book
(
id int identity (1,1) primary key Not Null,
FirstName varchar(150) Not Null,
LastName varchar(150) Not Null,
Address varchar (250) Not Null,
City varchar (200) Not Null,
State varchar (200) Not Null,
Zip varchar(6) Not Null,
PhoneNo varchar(10)Not Null,
Email varchar (200) Not Null,
);




--UC3 Inserting new Address Book

Select * From Address_Book;


Insert into Address_Book( FirstName,LastName,Address ,City,State,Zip,PhoneNo,Email) 

Values
('Lavnya','Patel','Mota Varchha','Surat','Gujarat',400086,9872662669,'lavnya@gmail.com'),
('Hiral','Parekh','Bandra','Mumbai','Maharashtra',400050,9876654321,'hiral@gmail.com'),
('Hitesh','Patil','Akurdi','Pune','Maharashtra',411035,9898656543,'hitesh@gmail.com'),
('Kinjal','Vaghani','Bhusawal','Jalgaon','Maharashtra',425301,7893125456,'kinjal@gmail.com');




--UC4 Editing Contact Person Detail By name

Select * From Address_Book;

UPDATE Address_Book SET PhoneNo = 7891234560 Where FirstName ='Lavnya';
UPDATE Address_Book SET PhoneNo= 9874123650 Where FirstName ='Hiral';
UPDATE Address_Book SET PhoneNo = 8952136470 Where FirstName ='Hitesh';
UPDATE Address_Book SET PhoneNo = 8217935460 Where FirstName ='Kinjal';

truncate table Address_Book


--UC5 Delete a Peson Contact Using his Name

Select * From Address_Book;

Delete From Address_Book where FirstName ='Hiral'



--UC6 Calling Person Contact By City Or State name

Select * From Address_Book Where City ='Surat';



--UC7 Size of AdreesBook /Full Count  by City & State

SELECT COUNT(City) as ContactCount From Address_Book where City = 'Surat' GROUP BY City;
SELECT COUNT(State) as ContactCount From Address_Book where State = 'Maharashtra' GROUP BY State;



--UC8 Sorting Entries Alphabetically using Ascending oder function

Select * From Address_Book Order By  City ASC;




--UC9 Adding Column for Tagging name by Relation

Select * From Address_Book;

ALTER TABLE Address_Book ADD RelationType Varchar(20) null;

UPDATE Address_Book SET RelationType ='Friend' Where FirstName= 'Lavnya';
UPDATE Address_Book SET RelationType ='Electrician' Where FirstName= 'Hiral';
UPDATE Address_Book SET RelationType ='Self' Where FirstName= 'Hitesh';
UPDATE Address_Book SET RelationType ='Neighbor' Where FirstName= 'Kinjal';



--UC10 Count by Type of contact (RelationType)

SELECT COUNT(PhoneNo) as FreindCOUNT From Address_Book Where RelationType = 'Friend' GROUP BY RelationType;
SELECT COUNT(PhoneNo) as ElectricianCOUNT From Address_Book Where RelationType = 'Electrician' GROUP BY RelationType;
SELECT COUNT(PhoneNo) as SelfCOUNT From Address_Book Where RelationType = 'Self' GROUP BY RelationType;
SELECT COUNT(PhoneNo) as NeighborCOUNT From Address_Book Where RelationType = 'Neighbor' GROUP BY RelationType;




--UC11 