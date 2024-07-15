## Create By siriwan
CREATE Table student (
    Stu_Id int not null unique,
    Stu_Fname varchar(70) not null,
    Stu_Lname varchar(70) not null,
    Stu_Littelname varchar(10) not null,
    Stu_Sex int not null,
    Stu_Major varchar(70) not null,
    Stu_Bdate varchar(70) not null,
    Stu_Email varchar(70) not null unique,
    Stu_tel int not null unique,
    CreateAt timestamp default current_timestamp,
    UpdateAt datetime,

    primary key(Stu_Id)

    );

## Create By siriwan
CREATE Table rider (
    Rider_Id varchar(12) not null unique,
    Rider_Fname varchar(70) not null,
    Rider_Lname varchar(70) not null,
    Rider_Littelname varchar(10) not null,
    Rider_Sex  int not null,
    Rider_Major varchar(70) not null,
    Rider_Bdate varchar(70) not null,
    Rider_Email varchar(70) not null unique,
    Rider_tel int not null unique,
    CreateAt timestamp default current_timestamp,
    UpdateAt datetime,

    primary key(Rider_Id)

    );

## Create By rangsan
CREATE Table product (
    Pro_dId varchar(12) not null,
    Pro_dPrice int not null,
    Pro_dType varchar(70) not null,
    Pro_dName varchar(70) not null unique,
    CreateAt timestamp default current_timestamp,
    UpdateAt datetime,

    primary key(Pro_dId)
    );

## Create By siriwan
CREATE Table Selectstore (
    selectStore varchar(12) not null,
    Store_Id varchar(12) not null,
    Stu_Id int unique,
    CreateAt timestamp default current_timestamp,

    primary key (selectStore)
);

#Create By siriwan
CREATE Table Selectproduct (
    selectProduct varchar(12) not null,
    Pro_dId varchar(12) not null,
    Stu_Id int unique,
    CreateAt timestamp default current_timestamp,

    primary key (selectProduct)
    );

##Create By siriwan
CREATE Table store (
    Store_Id varchar(12) not null,
    Store_name varchar(70) not null,
    AddressId varchar(70) not null,
    Pro_dId varchar(12) not null unique,
    CreateAt timestamp default current_timestamp,
    UpdateAt datetime,

    primary key (Store_Id)
    );

##Create By pheerawit
CREATE TABLE Orderreceipt (
    Order_Id varchar(12) not null,
    Pro_dId varchar(12) not null,
    Stu_Id int not null unique,
    Rider_Id varchar(12) not null unique,
    Total_price int not null,
    CreateAt timestamp default current_timestamp,

    primary key (Order_Id)
    );

##Create By phanupong
CREATE TABLE status (
    Status_Id varchar(12) not null,
    Prepaing varchar(70) not null,
    Currently_shipping varchar(70) not null,
    Successful varchar(70) not null,
    CreateAt timestamp default current_timestamp,
    UpdateAt datetime,
    primary key (Status_Id)
    );

##Create By aanchaleeporn
CREATE TABLE Placefordelivery (
    Place_ID char(12) not null ,
    Building char(70) not null ,
    Floor char(70) not null ,
    Room char(70) not null ,
    Stu_ID int not null unique ,
    CreateAs timestamp default current_timestamp,
    UpdateAs datetime,

    primary key (Place_ID)
);

## Create By siriwan
ALTER TABLE Selectproduct ADD constraint Selectproduct_product_fk FOREIGN KEY (Pro_dId) REFERENCES product(Pro_dId);
ALTER TABLE Selectproduct ADD constraint Selectproduct_student_fk FOREIGN KEY (Stu_Id) REFERENCES student(Stu_Id);
ALTER TABLE Selectstore ADD constraint Selectstore_product_fk FOREIGN KEY (Store_Id) REFERENCES store(Store_Id);
ALTER TABLE Selectstore ADD constraint Selectstore_student_fk FOREIGN KEY (Stu_Id) REFERENCES student(Stu_Id);
ALTER TABLE store ADD constraint store_product_fk FOREIGN KEY (Pro_dId) REFERENCES product(Pro_dId);
ALTER TABLE Orderreceipt ADD constraint Orderreceipt_product_fk FOREIGN KEY (Pro_dId) REFERENCES product(Pro_dId);
ALTER TABLE Orderreceipt ADD constraint Orderreceipt_student_fk FOREIGN KEY (Stu_Id) REFERENCES student(Stu_Id);
ALTER TABLE Orderreceipt ADD constraint Orderreceipt_rider_fk FOREIGN KEY (Rider_Id) REFERENCES rider(Rider_Id);
ALTER TABLE Placefordelivery ADD constraint Placefordelivery_student_fk FOREIGN KEY (Stu_Id) REFERENCES student(Stu_Id);

## Create By siriwan (ทดสอบinsert)
insert into student(Stu_Id, Stu_Fname, Stu_Lname, Stu_Littelname, Stu_Sex, Stu_Major, Stu_Bdate, Stu_Email, Stu_tel, CreateAt, UpdateAt)
values ('120900120911777','ศิริวรรณ','ชนะสัตรู','นางสาว',19,'เทคโนโลยีสารสนเทศ','3 พฤศจิกายน 2548','mogkoo2017@gmail.com',0888888888,current_time,current_time);
insert into rider(Rider_Id, Rider_Fname, Rider_Lname, Rider_Littelname, Rider_Sex, Rider_Major, Rider_Bdate, Rider_Email, Rider_tel, CreateAt, UpdateAt)
values ('129999999999','ชนาทิพย์','หวังดี','นาย',18,'คอมพิวเตอร์กราฟิก','19 มกราคม 2549','koookkai123@gmail.com',0991116789,current_time,current_time);
insert into product(Pro_dId, Pro_dPrice, Pro_dType, Pro_dName, CreateAt, UpdateAt)
values ('122229999988',70,'น้ำ','น้ำโซดา',current_time,current_time);