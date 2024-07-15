#ข้อที่1
SELECT ProductName,Price,QuantityInStock,CategoryName,VendorName from Products P join Categories C on P.CategoryID = C.CategoryID join Vendors V on P.VendorID = V.VendorID;
#ข้อที่2
SELECT FirstName, LastName, Email, Phone, Address from Customers;
#ข้อที่3
SELECT O.OrderID,ORD.Quantity,C.FirstName,C.LastName,P.ProductName,(ORD.Quantity*P.Price),O.OrderDate from Orders O
join OrderDetails ORD on O.OrderID = ORD.OrderID
join Customers C on O.CustomerID = C.CustomerID
join Products P on ORD.ProductID = P.ProductID;
#ข้อที่4
SELECT YEAR(O.OrderDate) AS Year ,MONTH(O.OrderDate) AS Month ,SUM((ORD.Quantity*ORD.UnitPrice)) AS totalprice  from Orders O
join OrderDetails ORD on O.OrderID = ORD.OrderID ;
#ข้อที่5
SELECT ProductName, MAX(ORD.Quantity) AS Quantity ,(MAX(ORD.Quantity)* P.Price) AS totalprice FROM OrderDetails ORD
join Products P on ORD.ProductID = P.ProductID GROUP BY P.ProductName ORDER BY MAX(ORD.Quantity) DESC LIMIT 1;
#ข้อที่6
SELECT C.FirstName,C.LastName,C.Address,ORD.Quantity FROM Customers C
join Orders O on C.CustomerID = O.CustomerID join OrderDetails ORD on O.OrderID = ORD.OrderID GROUP BY C.FirstName, C.LastName, C.Address, ORD.Quantity
ORDER BY MAX(ORD.Quantity) DESC LIMIT 1;
#ข้อที่7
Select sum(Quantity * UnitPrice) AS Totalsales from OrderDetails;
#ข้อที่8
SELECT CAT.CategoryName ,SUM(P.QuantityInStock)  AS wholething from Products P join Categories CAT ON P.CategoryID = CAT.CategoryID
GROUP BY CAT.CategoryName;
#ข้อที่9
SELECT COUNT(OrderDetailID) AS Customers FROM OrderDetails;
#พิเศษ1
SELECT P.ProductID, CAT.CategoryName ,YEAR(O.OrderDate) AS Year ,P.ProductName , (ORD.Quantity*P.Price) AS  totalprice FROM Orders O
join OrderDetails ORD on O.OrderID = ORD.OrderID
join Products P on ORD.ProductID = P.ProductID
join Categories CAT on P.CategoryID = CAT.CategoryID GROUP BY P.ProductID;
#พิเศษ2
SELECT CAT.CategoryName, (ORD.Quantity*P.Price) AS  totalprice FROM Orders O
join OrderDetails ORD on O.OrderID = ORD.OrderID
join Products P on ORD.ProductID = P.ProductID
join Categories CAT on P.CategoryID = CAT.CategoryID GROUP BY CategoryName;


