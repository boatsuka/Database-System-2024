CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `adminfname` varchar(40) NOT NULL,
  `adminlname` varchar(40) NOT NULL,
  `adminemail` varchar(40) NOT NULL,
  `admintel` varchar(10) NOT NULL,
  `adminposition` varchar(40) NOT NULL,
  `datetimecerate` datetime NOT NULL,
  `datetimeupdate` datetime NOT NULL,
  PRIMARY KEY (`adminid`),
  UNIQUE KEY `adminid` (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `buyer` (
  `buyerid` int(11) NOT NULL AUTO_INCREMENT,
  `buyerfname` varchar(40) NOT NULL,
  `buyerlname` varchar(40) NOT NULL,
  `age` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `buyeremail` varchar(40) NOT NULL,
  `buyertel` varchar(10) NOT NULL,
  PRIMARY KEY (`buyerid`),
  UNIQUE KEY `buyerid` (`buyerid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `notification` (
  `notificationid` varchar(20) NOT NULL,
  `buyerid` int(11) NOT NULL,
  `sellerid` int(11) NOT NULL,
  `notificationdetail` varchar(500) NOT NULL,
  `notificationstatus` varchar(100) NOT NULL,
  `datetimeupdate` datetime NOT NULL,
  `datetimecreate` datetime NOT NULL,
  `typenotification` varchar(50) NOT NULL,
  PRIMARY KEY (`notificationid`),
  UNIQUE KEY `notificationid` (`notificationid`),
  KEY `notification_buyer_FK` (`buyerid`),
  KEY `notification_seller_FK` (`sellerid`),
  CONSTRAINT `notification_buyer_FK` FOREIGN KEY (`buyerid`) REFERENCES `buyer` (`buyerid`),
  CONSTRAINT `notification_seller_FK` FOREIGN KEY (`sellerid`) REFERENCES `seller` (`sellerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `orderlist` (
  `ordernumber` varchar(13) NOT NULL,
  `productid` varchar(20) NOT NULL,
  `buyerid` int(11) NOT NULL,
  `sellerid` int(11) NOT NULL,
  `amount` int(10) NOT NULL,
  `total` int(11) NOT NULL,
  `orderstatus` varchar(50) NOT NULL,
  `datetimeupdate` datetime NOT NULL,
  `datetimecreate` datetime NOT NULL,
  PRIMARY KEY (`ordernumber`),
  UNIQUE KEY `ordernumber` (`ordernumber`),
  KEY `orderlist_product_FK` (`productid`),
  KEY `orderlist_buyer_FK` (`buyerid`),
  KEY `orderlist_seller_FK` (`sellerid`),
  CONSTRAINT `orderlist_buyer_FK` FOREIGN KEY (`buyerid`) REFERENCES `buyer` (`buyerid`),
  CONSTRAINT `orderlist_product_FK` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  CONSTRAINT `orderlist_seller_FK` FOREIGN KEY (`sellerid`) REFERENCES `seller` (`sellerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- dbitgroup3.product definition

CREATE TABLE `product` (
  `productid` varchar(10) NOT NULL,
  `productname` varchar(40) NOT NULL,
  `detailedpattern` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `productstatus` varchar(40) NOT NULL,
  `category` varchar(10) NOT NULL,
  `datetimecreate` datetime NOT NULL,
  `datetimeupdate` datetime NOT NULL,
  `sellerid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  PRIMARY KEY (`productid`),
  UNIQUE KEY `productid` (`productid`),
  KEY `product_seller_FK` (`sellerid`),
  KEY `product_admin_FK` (`adminid`),
  CONSTRAINT `product_admin_FK` FOREIGN KEY (`adminid`) REFERENCES `admin` (`adminid`),
  CONSTRAINT `product_seller_FK` FOREIGN KEY (`sellerid`) REFERENCES `seller` (`sellerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `seller` (
  `sellerid` int(11) NOT NULL AUTO_INCREMENT,
  `sellerfname` varchar(40) NOT NULL,
  `sellerlname` varchar(40) NOT NULL,
  `sellertel` varchar(10) NOT NULL,
  `selleremail` varchar(40) NOT NULL,
  `age` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  PRIMARY KEY (`sellerid`),
  UNIQUE KEY `sellerid` (`sellerid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;