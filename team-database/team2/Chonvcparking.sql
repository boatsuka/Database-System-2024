# Create By Thitinan Nirongbut
CREATE TABLE users (
    userId varchar(13) not null unique,
    nameTitle varchar(10) not null,
    firstName varchar(60) not null,
    lastName varchar(60) not null,
    userClass varchar(60) not null,
    createAt timestamp default current_timestamp,
    updateAt datetime,
    userSex varchar(60) not null,
    userTel varchar(20) not null,
    userStatus boolean default true not null,

    constraint user_pk primary key (userId)

);

# Create By Thitinan Nirongbut
CREATE TABLE booking (
    bookingId varchar(60) not null unique,
    createAt timestamp default current_timestamp,
    updateAt datetime,
    userId varchar(13) not null,
    parkId char(20) NOT NULL UNIQUE,
    plateNumber varchar(60) not null ,
    bookingStatus boolean default true not null,

    constraint booking_pk primary key (bookingId)
);

# Create By Setthanan Khunbuntham
CREATE TABLE vehicle (
    plateNumber varchar(60) not null ,
    plateProvince varchar(60) not null,
    vehicleType varchar(60) not null,
    vehicleBrand varchar(60) not null,
    vehicleModel varchar(60) not null,
    vehicleColor varchar(60) not null,
    createAt timestamp default current_timestamp not null,
    updateAt datetime not null,
    vehicleStatus boolean default true not null,
    userId varchar(13) not null,

    constraint vehicle_pk primary key (plateNumber)
);


# Create By Arthityada Khamjan
CREATE TABLE details (
	detailId int NOT NULL AUTO_INCREMENT,
    userId varchar(13) not null unique,
	plateNumber varchar(60) not null ,
    checkInTime timestamp default current_timestamp not null,
    checkOutTime datetime,

    constraint detail_pk primary key (detailId)

);

# Create By Nichanan Thongsuae
CREATE TABLE areaParking (
	parkId char(20) NOT NULL UNIQUE,
	parkZone char(10) NOT NULL,
    parkBuilding varchar(10) not null ,
	parkStatus boolean default false NOT NULL,

	constraint areaParking_pk PRIMARY KEY (parkId)
);


# Create By Thitinan Nirongbut

ALTER TABLE vehicle ADD constraint vehicle_user_fk1 FOREIGN KEY (userId) REFERENCES users(userId);
ALTER TABLE booking ADD constraint booking_user_fk FOREIGN KEY (userId) REFERENCES users(userId);
ALTER TABLE booking ADD constraint booking_areaParking_fk FOREIGN KEY (parkId) REFERENCES areaParking(parkId);
ALTER TABLE details ADD constraint details_user_fk FOREIGN KEY (userId) REFERENCES users(userId);
ALTER TABLE details ADD constraint details_vehicle_fk FOREIGN KEY (plateNumber) REFERENCES vehicle(plateNumber);

# Insert into users 1 By Thitinan Nirongbut
insert into users (userId, nameTitle, firstName, lastName, userClass, createAt, updateAt, userSex, userTel , userStatus)
values ('1209000111112','นาย','ฐิตินันต์','นิรงบุตร','นักเรียน',current_time,current_time,'ชาย','09348721544',true);

# Insert into users 2 By Thitinan Nirongbut
insert into users (userId, nameTitle, firstName, lastName, userClass, createAt, updateAt, userSex, userTel , userStatus)
values ('1209000111113','นาย','โอโจ้','ด้วย','นักเรียน',current_time,current_time,'ชาย','09348728844',true);

# Insert into users 3 By Thitinan Nirongbut
insert into users (userId, nameTitle, firstName, lastName, userClass, createAt, updateAt, userSex, userTel , userStatus)
values ('1209000111114','นางสาว','ศิริ','นะจ๊ะ','ครู',current_time,current_time,'หญิง','09348729954',true);

# Insert into booking 1 By Thitinan Nirongbut
insert into booking (bookingId, createAt, updateAt, userid, parkId , plateNumber, bookingStatus)
values ('B001',current_time,current_time,'1209000111112','P001','7กก7777',true);

# Insert into booking 2 By Thitinan Nirongbut
insert into booking (bookingId, createAt, updateAt, userid, parkId , plateNumber, bookingStatus)
values ('B002',current_time,current_time,'1209000111113','P002','5กก2197',true);

# Insert into booking 3 By Thitinan Nirongbut
insert into booking (bookingId, createAt, updateAt, userid, parkId , plateNumber, bookingStatus)
values ('B003',current_time,current_time,'1209000111114','P003','9กก8977',true);

# Insert into vehicle 1 By Thitinan Nirongbut
insert into vehicle (plateNumber, plateProvince, vehicleType, vehicleBrand, vehicleModel, vehicleColor, createAt, updateAt, vehicleStatus, userId)
value ('7กก7777','ชลบุรี','รถจักรยานยนต์','HONDA','Wave 125','น้ำเงิน',current_time,current_time,'true','1209000111112');

# Insert into vehicle 2 By Thitinan Nirongbut
insert into vehicle (plateNumber, plateProvince, vehicleType, vehicleBrand, vehicleModel, vehicleColor, createAt, updateAt, vehicleStatus, userId)
value ('5กก2197','ชลบุรี','รถจักรยานยนต์','HONDA','Wave 125','น้ำเงิน',current_time,current_time,'true','1209000111113');

# Insert into vehicle 3 By Thitinan Nirongbut
insert into vehicle (plateNumber, plateProvince, vehicleType, vehicleBrand, vehicleModel, vehicleColor, createAt, updateAt, vehicleStatus, userId)
value ('9กก8977','ชลบุรี','รถจักรยานยนต์','HONDA','Wave 125','น้ำเงิน',current_time,current_time,'true','1209000111114');

# Insert into detail 1 By Thitinan Nirongbut
insert into details (detailId, userid, plateNumber, checkInTime, checkOutTime)
VALUE ('1','1209000111112','7กก7777',current_time,current_time);

# Insert into detail 2 By Thitinan Nirongbut
insert into details (detailId, userid, plateNumber, checkInTime, checkOutTime)
VALUE ('2','1209000111113','5กก2197',current_time,current_time);

# Insert into detail 3 By Thitinan Nirongbut
insert into details (detailId, userid, plateNumber, checkInTime, checkOutTime)
VALUE ('3','1209000111114','9กก8977',current_time,current_time);

# Insert into areaParking 1 By Thitinan Nirongbut
insert into areaParking (parkId, parkZone, parkBuilding ,parkStatus) value ('P001','A','6', false);

# Insert into areaParking 2 By Thitinan Nirongbut
insert into areaParking (parkId, parkZone, parkBuilding ,parkStatus) value ('P002','B','8', false);

# Insert into areaParking 3 By Thitinan Nirongbut
insert into areaParking (parkId, parkZone, parkBuilding ,parkStatus) value ('P003','C','4', false);