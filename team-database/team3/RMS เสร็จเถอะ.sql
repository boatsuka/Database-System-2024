-- create by joshua
CREATE TABLE Admin (
    Admin_ID char(60) not null ,
    ID_Card char(60) not null ,
    AdminPassword char(60) not null ,
    F_name char(60) not null ,
    L_name char(60) not null ,
    Tell int not null ,
    Email char(60) not null ,
    CreateAs timestamp not null ,
    UpdateAs timestamp not null ,

    primary key admin_pk (Admin_ID)
);


-- by Netnapha
CREATE Table Student (
	Stu_id int not null unique,
	f_name varchar(60) not null,
	l_name varchar(60) not null,
	department varchar(60) not null,
	grade varchar(60) not null,
	birthday varchar(60) not null,
	email varchar(60) not null,
	tell int not null,
	h_number varchar(60) not null,
	stu_district varchar(60) not null,
	stu_province varchar(60) not null,
    CreateAs timestamp not null ,
    UpdateAs timestamp not null ,

	PRIMARY KEY(Stu_id)
);

-- create by netapha
CREATE Table Leaveletter (
	LeaveRequastID int not null unique,
	Stu_id int not null unique,
	leavetype varchar(60) not null,
	startdate varchar(60) not null,
	enddate varchar(60) not null,
	reason varchar(60) not null,
	createas timestamp not null,
	updateas timestamp not null,

	PRIMARY KEY(LeaveRequastID)

);

-- create by Thanyarat
CREATE table teacher (
    teacher_id varchar(60) not null,
    password int not null ,
    F_name varchar(60) not null,
    L_name varchar(60) not null,
    tell int not null ,
    email varchar(60) not null,
    teachclass varchar(60) not null,
    department varchar(60) not null,
    createas varchar(60) not null,
    updateas varchar(60) not null,
    idcard varchar(60) not null,

    primary key(teacher_id)
);

-- create by uthmporn
CREATE Table Teacher_Notification (
    Notiflcation_ID varchar(60) not null,
    LeaveRequastID Int not null,
    Status varchar(60) not null,
    Stu_id varchar(60) not null,
    teacher_id varchar(60) not null,
    CreateAs Datetime not null,
    UpdateAs Datetime not null,


    PRIMARY KEY (Notiflcation_ID)

);

-- create by joshua
CREATE Table AdminNotification (
    Admin_Notiflcation_ID varchar(60) not null,
    reason varchar(60) not null,
    Status varchar(60) not null,
    Stu_id varchar(60) not null,
    CreateAs Datetime not null,
    UpdateAs Datetime not null,


    PRIMARY KEY (Admin_Notiflcation_ID)

);

-- create by Thanyarat
CREATE TABLE TeacherAPPROVE (
    ApproveID varchar(60) not null,
    LeaveRequastID varchar(60) not null,
    Status varchar(60) not null,
    UpdateAS timestamp not null,
    ApproveDate timestamp not null,
    CreateAs timestamp not null,
    Stu_id int not null unique,
    teacher_id varchar(60) not null,

    primary key(ApproveID)

);

-- create by joshua
CREATE TABLE AdminAPPROVE (
    Admin_ApproveID varchar(60) not null,
    LeaveRequastID varchar(60) not null,
    Status varchar(60) not null,
    UpdateAS timestamp not null,
    ApproveDate timestamp not null,
    CreateAs timestamp not null,
    Stu_id int not null unique,
    Admin_ID char(60) not null ,

    primary key(Admin_ApproveID)

);


-- create by ratthaphum
CREATE TABLE Teacher_history (
    historyid varchar(60) not null primary key,
    ApproveID varchar(60) not null,
    createas timestamp not null,
    updateas timestamp not null,
    teacher_id varchar(60) not null
);

-- joshua
CREATE TABLE Admin_history (
    Admin_historyid varchar(60) not null primary key,
    Admin_ApproveID varchar(60) not null,
    createas timestamp not null,
    updateas timestamp not null,
    Admin_ID char(60) not null
);



-- Leaveletter  netapha
ALTER TABLE Leaveletter ADD constraint Stu_ID FOREIGN KEY (Stu_id) REFERENCES Student(Stu_id);

-- by joshua all foreign key

-- Approve teacher
ALTER TABLE TeacherAPPROVE ADD constraint LeaveRequastID FOREIGN KEY (LeaveRequastID) REFERENCES Leaveletter(LeaveRequastID);

ALTER TABLE TeacherAPPROVE ADD constraint Stu_id FOREIGN KEY (Stu_id) REFERENCES Student(Stu_id);

ALTER TABLE TeacherAPPROVE ADD constraint teacher_id FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id);

-- Approve Admin
ALTER TABLE AdminAPPROVE ADD constraint LeaveRequastID FOREIGN KEY (LeaveRequastID) REFERENCES Leaveletter(LeaveRequastID);

ALTER TABLE AdminAPPROVE ADD constraint Stu_id FOREIGN KEY (Stu_id) REFERENCES Student(Stu_id);

ALTER TABLE AdminAPPROVE ADD constraint Admin_ID FOREIGN KEY (Admin_ID) REFERENCES Admin(Admin_ID);

-- notifications Teacher
ALTER TABLE Teacher_Notiflcation ADD constraint LeaveRequastID FOREIGN KEY (LeaveRequastID) REFERENCES Leaveletter(LeaveRequastID);

ALTER TABLE Teacher_Notiflcation ADD constraint Stu_id FOREIGN KEY (Stu_id) REFERENCES Student(Stu_id);

ALTER TABLE Teacher_Notiflcation ADD constraint teacher_id FOREIGN KEY (teacher_id) REFERENCES teacher (teacher_id);

-- notifications Admin

ALTER TABLE AdminNotification ADD constraint Stu_id FOREIGN KEY (Stu_id) REFERENCES Student(Stu_id);

-- history Teacher
ALTER TABLE Teacher_history ADD constraint ApproveID FOREIGN KEY (ApproveID) REFERENCES TeacherAPPROVE (ApproveID);

ALTER TABLE Teacher_history ADD constraint teacher_id FOREIGN KEY (teacher_id) REFERENCES teacher (teacher_id);


-- history Admin
ALTER TABLE Admin_history ADD constraint Admin_ApproveID FOREIGN KEY (Admin_ApproveID) REFERENCES AdminAPPROVE (Admin_ApproveID);

ALTER TABLE Admin_history ADD constraint Admin_ID FOREIGN KEY (Admin_ID) REFERENCES Admin (Admin_ID);


-- by joshua all insert
insert into Admin (Admin_ID, ID_Card, AdminPassword, F_name, L_name, Tell, Email, CreateAs, UpdateAs)
values ('A1234','1594873569854','Admin1234','Joshua','KELBIE','0971563487','joshua@gmail.com',current_timestamp,current_timestamp);

insert into Student (Stu_id, f_name, l_name, department, grade, birthday, email, tell, h_number, stu_district, stu_province, CreateAs, UpdateAs)
VALUES ('673190109', 'somsak', 'makmak', 'information technology', '3', '23 March 2549', 'hkdjak45@gmail.com', '0681254879', '11/57', 'bansoun', 'chonburi', current_timestamp,current_timestamp);

insert into teacher (teacher_id, password, F_name, L_name, tell, email, teachclass, department, createas, updateas, idcard)
VALUES ('T16584', '35658745', 'porn', 'dee', '0549873254', 'tkejn58@gmail.com', '1/1', 'information technology', current_timestamp, current_timestamp,'1479900587409');

insert into Leaveletter (LeaveRequastID, Stu_id, leavetype, startdate, enddate, reason, createas, updateas)
values ('251844', '673190109', 'Sick leave', '6', '7', 'น้ำกระเด็นเข้าตาเลยท้องเสียครับ', current_timestamp,current_timestamp);

insert into TeacherAPPROVE (ApproveID, LeaveRequastID, Status, UpdateAS, ApproveDate, CreateAs, Stu_id, teacher_id)
values ('A14615', '251844', 'agree', current_timestamp, current_timestamp, current_timestamp, '673190109', 'T16584');

insert into AdminAPPROVE (Admin_ApproveID, LeaveRequastID, Status, UpdateAS, ApproveDate, CreateAs, Stu_id, Admin_ID)
values ('A14615', '251844', 'agree', current_timestamp, current_timestamp, current_timestamp, '673190109', 'A1234');

insert into Teacher_Notiflcation (Notiflcation_ID, LeaveRequastID, Status, Stu_id, teacher_id, CreateAs, UpdateAs)
values ('N3168', '251844', 'new', '673190109', 'T16584', current_timestamp, current_timestamp);

insert into AdminNotification (Admin_Notiflcation_ID, reason, Status, Stu_id, CreateAs, UpdateAs)
values ('sd6815', 'แอพกากมากครับ', 'new', '673190109', current_timestamp, current_timestamp);

insert into Teacher_history (historyid, ApproveID, createas, updateas, teacher_id)
values ('h5824', 'A14615', current_timestamp, current_timestamp, 'T16584');

insert into Admin_history (Admin_historyid, Admin_ApproveID, createas, updateas, Admin_ID)
values ('AH2145', 'A14615', current_timestamp, current_timestamp, 'A1234');

