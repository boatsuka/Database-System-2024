CREATE Table buyer (
	buyerid int auto_increment unique,
	buyerfname varchar(40) not null ,
	buyerlname varchar(40) not null,
	age varchar(10) not null,
	gender varchar(10) not null,
	buyeremail varchar(40) not null,
	buyertel varchar(10) not null,
	
	primary key(buyerid)
);

CREATE Table seller (
	sellerid int auto_increment unique,
	sellerfname varchar(40) not null,
	sellerlname varchar(40) not null,
	sellertel varchar(10) not null,
	selleremail varchar(40) not null,
	age varchar(10) not null,
	gender varchar(10) not null,
	productid varchar(10) not null,
	
	PRIMARY KEY(sellerid)
);

CREATE Table product (
	productid varchar(10) not null unique,
	productname varchar(40) not null ,
	detailedpattern varchar(100) not null,
	price int(10) not null,
	amount int(10) not null,
	productstatus varchar(40) not null, 
	category varchar(10) not null,
	datetimecreate datetime not null,
	datetimeupdate datetime not null,
	sellerid int not null, 
	adminid int not null,
	
	PRIMARY KEY (productid)
);

CREATE Table admin (
	adminid int auto_increment unique,
	adminfname varchar(40) not null,
	adminlname varchar(40) not null,
	adminemail varchar(40) not null,
	admintel varchar(10) not null,
	adminposition varchar(40) not null,
	datetimecerate datetime not null,
	datetimeupdate datetime not null,
	
	PRIMARY KEY (adminid)
);

CREATE Table orderlist (
	ordernumber varchar(13) not null unique,
	productid varchar(20) not null,
	buyerid int not null,
	sellerid int not null,
	amount int(10) not null,
	total int not null,
	orderstatus varchar(50) not null,
	datetimeupdate datetime not null,
	datetimecreate datetime not null,
	
	PRIMARY KEY (ordernumber)
);

CREATE Table notification (
	notificationid varchar(20) not null unique,
	buyerid int not null,
	sellerid int not null,
	notificationdetail varchar(500) not null,
	notificationstatus varchar(100) not null,
	datetimeupdate datetime not null,
	datetimecreate datetime not null,
	typenotification varchar(50) not null,
	
	PRIMARY KEY (notificationid)
);

