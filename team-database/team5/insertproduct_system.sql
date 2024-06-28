INSERT INTO dbitgroup3.admin (adminfname, adminlname, adminemail, admintel, adminposition, datetimecerate, datetimeupdate)
VALUES ('somsak', 'tuakhao', 'somsaik@gmail.com', '0000000001', 'admin', '2024-05-26 15:00', '2024-06-27 14:00');

SELECT * FROM admin ;

INSERT INTO dbitgroup3.buyer (buyerfname, buyerlname, age, gender, buyeremail, buyertel)
VALUES ('dala', 'narak', '13', 'boy', 'dalanarak@gmail.com', '0000000002');

SELECT * FROM buyer b  ;

INSERT INTO dbitgroup3.seller (sellerfname, sellerlname, sellertel, selleremail, age, gender, productid)
VALUES ('charlie', 'tuadam', '0000000003', 'charlie@gmail.com', '14', 'boy', 'a000000001');

SELECT * FROM seller s  ;

INSERT INTO dbitgroup3.product (productid,productname, detailedpattern, price, amount, productstatus, category, datetimecreate, datetimeupdate, adminid, sellerid)
VALUES ('a000000001', 'doll', 'xxxxxxx', '99', '2', 'in stock', 'toy', '2024-05-29 09:00', '2024-05-30 10:00', '1', '8');

SELECT * FROM product p  ;

INSERT INTO dbitgroup3.orderlist (ordernumber,productid, buyerid, sellerid, amount, total, orderstatus, datetimecreate, datetimeupdate)
VALUES ('abc0000000001', 'a000000001', '1', '8', '2', '198', 'preparing products', '2024-05-30 09:00', '2024-05-31 10:00');

SELECT * FROM orderlist o ;

INSERT INTO dbitgroup3.notification (notificationid, buyerid, sellerid, notificationdetail, notificationstatus, datetimecreate, datetimeupdate, typenotification)
VALUES ('no0000000001', '1', '8', 'xxxxxxxxxxxxx', 'pass', '2024-06-01 11:00', '2024-06-03 12:00', 'report');

SELECT * FROM notification n ;
