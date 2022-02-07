--create  database GameZone;
--use GameZone

create table CUSTOMERS(
id_customers INT PRIMARY KEY IDENTITY(1,1),
firstname varchar(255) not null,
lastname varchar(255) not null,
age int not null ,
phone_nubmer varchar(255) NOT NULL,
e_mail varchar(255) 
)


create table ROOMS(
id_room INT PRIMARY KEY IDENTITY (1,1),
room_number int NOT NULL,
room_size varchar(255) NOT NULL,
room_capacity int NOT NULL,
room_price decimal NOT NULL,
room_status varchar(255) NOT NULL
)

create table Devices(
id_device INT PRIMARY KEY IDENTITY (1,1),
Device_name varchar(255)NOT NULL,
Device_Manufacturer varchar(255)NOT NULL,
Device_price INT NOT NULL,
Device_Rent_Price float NOT NULL,
Device_periphery bit NOT NULL,
id_room INT FOREIGN KEY REFERENCES ROOMS(id_room) 
)

CREATE TABLE GAMES(
id_game int PRIMARY KEY IDENTITY (1,1),
game_name varchar(255) NOT NULL,
game_publisher varchar(255) NOT NULL,
game_rating decimal NOT NULL,
game_min_age int NOT NULL,
game_price int NOT NULL
)

CREATE TABLE DEVICE_GAMES(
Id_device int foreign KEY REFERENCES DEVICES(Id_device),
id_games int FOREIGN KEY REFERENCES GAMES(id_game)
)

create table ORDERS(
id_order int PRIMARY KEY IDENTITY(1,1),
order_time int NOT NULL, 
order_totalprice decimal,
id_customer int FOREIGN KEY REFERENCES Customers(id_customers),
id_room int FOREIGN KEY REFERENCES ROOMS(id_room),
id_device int foreign key REFERENCES DEVICES (id_device)
)
