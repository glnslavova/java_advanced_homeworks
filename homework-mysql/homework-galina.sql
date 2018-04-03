CREATE DATABASE CARS;

CREATE TABLE CARS.Car (
CarID int NOT NULL auto_increment Primary KEY,
Color varchar(12),
Model text,
Trademark varchar(25),
YearCar year(4),
Horsepower int,
Cubic double,
Additional_Feature_ID int null);

CREATE TABLE CARS.Additional_Features (
Additional_Feature_ID int not null auto_increment PRIMARY KEY,
HasGas bit,
Air_Conditioner bit,
Climate_Controller bit,
Seat_Heating bit,
Electric_Windows bit);

Create table CARS.Users(
UserID int not null auto_increment PRIMARY KEY,
UserName varchar(30) not null,
Pass varchar(50) not null, 
Email varchar(30) not null,
Age int,
FirstName varchar(20),
LastName varchar(20),
Sex char,
CarID int,
Address_ID int,
AD_ID int,
Additional_Feature_ID int);

Create table CARS.Address(
Address_ID int not null auto_increment PRIMARY KEY,
City varchar(30),
Neighbourhood text,
Street text,
Street_Number tinytext);

Create Table CARS.Ad (
AD_ID int not null auto_increment PRIMARY KEY,
Description text,
DateAd date,
CarID int);

INSERT INTO Cars.Car (Color, Model, Trademark, YearCar, HorsePower, Cubic, Additional_Feature_ID)
VALUES('Red', 'BMW i8', 'BMW', 2014, 139, 67.6, 3);

INSERT INTO Cars.Car (Color, Model, Trademark, YearCar, HorsePower,Cubic, Additional_Feature_ID)
VALUES('Blue', 'BMW X2', 'BMW', 2018, 228, 134.9, 3);

INSERT INTO Cars.Car (Color, Model, Trademark, YearCar, HorsePower, Cubic, Additional_Feature_ID)
VALUES('Silver', '640i xDrive 3.0 AT (320 hp) 4WD', 'BMW', 2015, 320, 272.6, 2);

INSERT INTO Cars.Car (Color, Model, Trademark, YearCar, HorsePower, Cubic, Additional_Feature_ID)
VALUES('Black', 'A4 Avant', 'Audi', 2018, 272, 178.5, 4);

INSERT INTO Cars.Car (Color, Model, Trademark, YearCar, HorsePower, Cubic, Additional_Feature_ID)
VALUES('Black', 'LS 500 RWD', 'Lexus', 2018, 416, 389.7, 1);

INSERT INTO CARS.Additional_Features(HasGas, Air_Conditioner, Climate_Controller, Seat_Heating, Electric_Windows)
VALUES (1, 1, 1, 0, 1);

INSERT INTO CARS.Additional_Features(HasGas, Air_Conditioner, Climate_Controller, Seat_Heating, Electric_Windows)
VALUES (0, 0, 1,1, 1);

INSERT INTO CARS.Additional_Features(HasGas, Air_Conditioner, Climate_Controller, Seat_Heating, Electric_Windows)
VALUES (0, 1, 1, 1, 1);

INSERT INTO CARS.Additional_Features(HasGas, Air_Conditioner, Climate_Controller, Seat_Heating, Electric_Windows)
VALUES (0, 1, 1, 0, 1);

INSERT INTO CARS.Additional_Features(HasGas, Air_Conditioner, Climate_Controller, Seat_Heating, Electric_Windows)
VALUES (0, 1, 0, 0, 1);

INSERT INTO CARS.Users(UserName, Pass, Email, Age, FirstName, LastName, Sex, CarID, Address_ID, AD_ID, Additional_Feature_ID)
VALUES ('ivan67', md5('gb56Q7!&'),'ivanslavov67@abv.bg', 25,'Ivan', 'Slavov', 'M', 4, 3, 1, 2);

INSERT INTO CARS.Users(UserName, Pass, Email, Age, FirstName, LastName, Sex, CarID, Address_ID, AD_ID, Additional_Feature_ID)
VALUES ('anna.petrova', md5('annaSF@'),'anna.i86@abv.bg', 32,'Anna', 'Petrova', 'F', 2,2,4,5);

INSERT INTO CARS.Users(UserName, Pass, Email, Age, FirstName, LastName, Sex, CarID, Address_ID, AD_ID, Additional_Feature_ID)
VALUES ('pesho_sf17', md5('IamgR8'),'peter.ivanov@abv.bg', 29,'Peter', 'Ivanov', 'M', 2,1,5,4);

INSERT INTO CARS.Users(UserName, Pass, Email, Age, FirstName, LastName, Sex, CarID, Address_ID, AD_ID, Additional_Feature_ID)
VALUES ('gabysl5', md5('DFg87Q@'),'gaby.stoyanova5@gmail.com', 37,'Gabriela', 'Stoyanova', 'F', 3,5,4,1);

INSERT INTO CARS.Users(UserName, Pass, Email, Age, FirstName, LastName, Sex, CarID, Address_ID, AD_ID, Additional_Feature_ID)
VALUES ('tanyyaivanova', md5('17GdF%gh'),'tanyyaivanova@yahoo.com', 48,'Tanya', 'Ivanova', 'F', 4,2,3,1);

INSERT INTO CARS.Address(City, Neighbourhood, Street, Street_Number)
VALUES ('Sofia', 'Lozenets', 'Milin Kamak Str.', '6' );

INSERT INTO CARS.Address(City, Neighbourhood, Street, Street_Number)
VALUES ('Sliven', 'Republika', 'Oreshaka Str.', '50' );

INSERT INTO CARS.Address(City, Neighbourhood, Street, Street_Number)
VALUES ('Sofia', 'Hipodruma', 'Sofijski geroi Str.', 'bl.150a' );

INSERT INTO CARS.Address(City, Neighbourhood, Street, Street_Number)
VALUES ('Sofia', 'Mladost', null, 'bl.210' );

INSERT INTO CARS.Address(City, Neighbourhood, Street, Street_Number)
VALUES ('Sofia', 'Center', 'Tsar Asen Bul.', '175' );

INSERT INTO CARS.AD(Description, DateAd)
VALUES ('The BMW i8 is a plug-in hybrid sports car developed by BMW. The i8 is part of BMWs electric fleet Project i being marketed as a new sub-brand, BMW i. The 2015 model year BMW i8 has a 7.1 kWh lithium-ion battery pack that delivers an all-electric range of 37 km (23 mi) under the New European Driving Cycle.', '2018-03-21');

INSERT INTO CARS.AD(Description, DateAd)
VALUES('Unleash your inner rebel with the first ever BMW X2. With agile dynamics, tremendous 400Nm pulling power and high-precision handling, this athletic Sports Activity Coupé (SAC) is ready to go beyond the everyday commute and get adventurous. What’s more, its seamless connectivity and stylish interior has everything the modern traveller needs. And for the first time ever within the BMW X family, it will also be available as a M Sport X model. Are you ready to break some rules?', '2018-01-20');

INSERT INTO CARS.AD(Description, DateAd)
VALUES ('With its sweeping roofline and muscular stance, the Gran Coupe disguises a pair of rear doors while retaining the sporty façade of the two-door on which it is based. A 315-hp turbo 3.0-liter inline-six or 445-hp twin-turbo 4.4-liter V-8 power the rear or all four wheels through an eight-speed automatic. A balanced chassis and well-weighted steering make the car a driver’s delight. Opt for the Alpina model and you’ll enjoy a boost to 600 hp, all-wheel drive, and an even more lavish cabin.', '2017-12-04');

INSERT INTO CARS.AD(Description, DateAd)
VALUES('The estate version of the new Audi A4 saloon, or, it you prefer, a five-seater family car with a big boot that’s not a crossover. It’ll never catch on. Anyway. This new A4 Avant is much bigger than its predecessor, to the benefit of interior space. It’s only available as a cooking A4 right now, but a hotter S4 is imminent and an RS4 is already in the pipeline - both with twin-turbo setups. ', '2018-01-28');

INSERT INTO CARS.AD(Description, DateAd)
VALUES('With the exception of a frustrating touchpad control system, the redesigned 2018 LS sedan is a quantum leap into the 21st century for the model that launched Lexus.', '2018-03-11');

Alter Table Cars.Car
Add Foreign Key (Additional_Feature_ID) References Cars.Additional_Features(Additional_Feature_ID);

Alter Table Cars.Users
ADD Foreign Key (Address_ID) References Cars.Address(Address_ID);

Alter Table Cars.Users
ADD Foreign Key (CarID) References Cars.Car(CarID);

Alter Table Cars.Users
ADD Foreign Key(AD_ID) References Cars.Ad(AD_ID);

Alter Table Cars.Users
ADD Foreign Key(Additional_Feature_ID) References Cars.Additional_Features(Additional_Feature_ID);

Alter Table Cars.Ad
ADD Foreign Key (CarID) References Cars.Car(CarID);

SELECT * FROM Cars.Users;

















