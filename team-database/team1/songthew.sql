
-- สร้างตาราง Driver โดยนายธีรศล เชื้อคำฮด
CREATE TABLE Driver (
    DriId INT(13) AUTO_INCREMENT,
    Fname VARCHAR(60) NOT NULL,
    Sname VARCHAR(60) NOT NULL,
    Sex VARCHAR(10) NOT NULL,
    Bdate DATE NOT NULL,
    UpdateAt DATE NOT NULL,
    CarId VARCHAR(15) NOT NULL UNIQUE,
    
    PRIMARY KEY (DriId)
);

-- สร้างตาราง CarInformation โดยนายยุทธหัตถ์ คชสาร
CREATE TABLE CarInformation (
    CarId VARCHAR(15) NOT NULL UNIQUE,
    Status VARCHAR(30) NOT NULL,
    Seats INT NOT NULL,
    Worktime VARCHAR(20) NOT NULL,
    Carbrand VARCHAR(60) NOT NULL,
    Color VARCHAR(20) NOT NULL,
    DriId INT(13) NOT NULL,
    PlacId VARCHAR(9) NOT NULL UNIQUE,
    
    PRIMARY KEY (CarId),
    FOREIGN KEY (DriId) REFERENCES Driver(DriId)
);

-- สร้างตาราง Queue โดยนายธราเทพ จีนพันธุ์
CREATE TABLE Queue (
    PlacId VARCHAR(9) NOT NULL,
    CarId VARCHAR(15) NOT NULL,
    Status VARCHAR(30) NOT NULL,
    Qnumber INT NOT NULL,
    Route VARCHAR(20) NOT NULL,
    DriId INT(13) NOT NULL,
    
    PRIMARY KEY (PlacId),
    FOREIGN KEY (DriId) REFERENCES Driver(DriId),
    FOREIGN KEY (CarId) REFERENCES CarInformation(CarId)
);

-- สร้างตาราง Passenger โดยนายธนกร ศรีวรรณ
CREATE TABLE Passenger (
    PassId INT(13) AUTO_INCREMENT,
    Fname VARCHAR(60) NOT NULL,
    Sname VARCHAR(60) NOT NULL,
    Sex VARCHAR(10) NOT NULL,
    Bdate DATE NOT NULL,
    UpdateAt DATE NOT NULL,
    CarId VARCHAR(15) NOT NULL UNIQUE,
    
    PRIMARY KEY (PassId),
    FOREIGN KEY (CarId) REFERENCES CarInformation(CarId)
);

-- สร้างตาราง Qcontroller โดยนายธราเทพ จีนพันธุ์
CREATE TABLE Qcontroller (
    QconId INT(13) AUTO_INCREMENT,
    Fname VARCHAR(60) NOT NULL,
    Sname VARCHAR(60) NOT NULL,
    Sex VARCHAR(10) NOT NULL,
    Bdate DATE NOT NULL,
    UpdateAt DATE NOT NULL,
    PlacId VARCHAR(9) NOT NULL UNIQUE,
    
    PRIMARY KEY (QconId),
    FOREIGN KEY (PlacId) REFERENCES Queue(PlacId)
);

-- สร้างตาราง Department โดยนางสาวศศิวิมล แจ่มจำรัส
CREATE TABLE Department (
    NatId INT(13) NOT NULL,
    Fname VARCHAR(60) NOT NULL,
    Sname VARCHAR(60) NOT NULL,
    UpdateAt DATE NOT NULL,
    Branch VARCHAR(60) NOT NULL,
    PlacId VARCHAR(9) NOT NULL UNIQUE,
    
    PRIMARY KEY (NatId),
    FOREIGN KEY (PlacId) REFERENCES Queue(PlacId)
);

-- สร้างตาราง Programmer โดยนายยุทธหัตถ์ คชสาร
CREATE TABLE Programmer (
    ProId INT(15) AUTO_INCREMENT,
    Fname VARCHAR(60) NOT NULL,
    Sname VARCHAR(60) NOT NULL,
    Sex VARCHAR(10) NOT NULL,
    Bdate DATE NOT NULL,
    UpdateAt DATE NOT NULL,
    PlacId VARCHAR(9) NOT NULL UNIQUE,
    
    PRIMARY KEY (ProId),
    FOREIGN KEY (PlacId) REFERENCES Queue(PlacId)
);


INSERT INTO dbitgroup5.Queue 
(PlacId , CarId , Status , Qnumber , Route , DriId)
VALUES ('ST001','2520', 'Not Full', '03', 'Baipat','1'),
       ('ST003','2539', 'Full', '02', 'Baipat','2'),
       ('SC002','2555', 'Full', '01', 'Merngmai','3');

SELECT * FROM dbitgroup5.Queue;
      


INSERT INTO dbitgroup5.CarInformation 
(CarId , Status , Seats , Worktime , Carbrand , Color , DriId , PlacId)
VALUES ('2520', 'ON', '15', '05:30', 'TOYOTA', 'RED','1','ST001'),
       ('2539', 'ON', '13', '06.30', 'TOYOTA', 'RED','2','ST001'),
       ('2555', 'ON', '17', '12.00', 'TOYOTA', 'RED','3','SC002');

SELECT * FROM dbitgroup5.CarInformation;  



INSERT INTO dbitgroup5.Driver 
(Fname, Sname, Sex, Bdate, UpdateAt, CarId)
VALUES ('Somchai', 'Somboon', 'Men', '1999-10-30', '2024-06-26', '2520'),
       ('Sompong', 'Somboon', 'Men', '1999-11-22', '2024-06-27', '2539'),
       ('Sommhai', 'Somboon', 'Men', '1999-12-25', '2024-06-22', '2555');

SELECT * FROM dbitgroup5.Driver;



INSERT INTO dbitgroup5.Passenger 
(Fname, Sname, Sex, Bdate, UpdateAt, CarId)
VALUES ('Somsri', 'Somboon', 'Women', '1999-10-20', '2024-06-26', '2520'),
       ('Sombat', 'Somboon', 'Men', '1999-11-12', '2024-06-27', '2539'),
       ('Somrak', 'Somboon', 'Men', '1999-12-24', '2024-06-22', '2555');

SELECT * FROM dbitgroup5.Passenger;



INSERT INTO dbitgroup5.Qcontroller 
(Fname, Sname, Sex, Bdate, UpdateAt, PlacId)
VALUES ('Somsoy', 'Somboon', 'Women', '1999-09-20', '2024-06-26', 'ST001'),
       ('Somjit', 'Somboon', 'Men', '1999-12-12', '2024-06-27', 'ST003'),
       ('Somsit', 'Somboon', 'Men', '1999-10-24', '2024-06-22', 'SC002');

SELECT * FROM dbitgroup5.Qcontroller;



INSERT INTO dbitgroup5.Department 
(NatId , Fname, Sname, Branch, UpdateAt, PlacId)
VALUES ('1200000000013','Somsai', 'Somboon','Chonburi', '2024-06-26', 'ST001'),
       ('3200000000013','Somfha', 'Somboon','Bangpakong', '2024-06-27', 'ST003'),
       ('1600000000013','Sommud', 'Somboon','Chonburi', '2024-06-22', 'SC002');

SELECT * FROM dbitgroup5.Department;



INSERT INTO dbitgroup5.Programmer 
(Fname, Sname, Sex, Bdate, UpdateAt, PlacId)
VALUES ('Sommad', 'Somboon', 'Women', '1999-10-20', '2024-06-26', '2520'),
       ('Somwai', 'Somboon', 'Men', '1999-11-12', '2024-06-27', '2539'),
       ('Somgai', 'Somboon', 'Men', '1999-12-24', '2024-06-22', '2555');

SELECT * FROM dbitgroup5.Programmer;