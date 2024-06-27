create table school (
    id uuid not null unique default uuid(),
    schoolId varchar(100) not null  unique,
    schoolName varchar(100) not null  unique,
    createAt timestamp not null default current_timestamp,
    updateAt datetime not null,

    CONSTRAINT school_pk PRIMARY KEY (id, schoolId)
);


create table classroom (
    id uuid not null unique default uuid(),
    classroomId varchar(100) not null  unique,
    classroomName varchar(100) not null unique,
    classroomNum int not null unique,
    classroomEdifice varchar(100) not null,
    schoolId varchar(100) not null,
    createAt timestamp not null default current_timestamp,
    updateAt datetime not null,

    CONSTRAINT classroom_pk PRIMARY KEY (id, classroomId),
    CONSTRAINT classroom_school_fk FOREIGN KEY (schoolId) references school(schoolId)
);


create table teacher (
    id uuid not null unique default uuid(),
    teacherId varchar(100) not null  unique ,
    teacherFname varchar(100) not null unique,
    teacherLname varchar(100) not null,
    classroomId varchar(100) not null,
    schoolId varchar(100) not null,
    createAt timestamp not null default current_timestamp,
    updateAt datetime not null,

    CONSTRAINT teacher_pk PRIMARY KEY (id, teacherId),
    CONSTRAINT teacher_school_fk FOREIGN KEY (schoolId) references school(schoolId),
    CONSTRAINT teacher_classroom_fk foreign key (classroomId) references classroom(classroomId)
);


create table student (
    id int not null unique auto_increment,
    stuId varchar(100) not null  unique ,
    stuFname varchar(100) not null unique,
    stuLname varchar(100) not null,
    classId varchar(100) not null,
    teacherId varchar(100) not null,
    schoolId varchar(100) not null,
    createAt timestamp not null default current_timestamp,
    updateAt datetime not null,

    CONSTRAINT student_pk PRIMARY KEY (id, stuId),
    CONSTRAINT student_school_fk FOREIGN KEY (schoolId) references school(schoolId),
    CONSTRAINT student_teacher_fk FOREIGN KEY (teacherId) references teacher(teacherId),
    CONSTRAINT student_classroom_fk FOREIGN KEY (classId) references classroom(classroomId)
);
