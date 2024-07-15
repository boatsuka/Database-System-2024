#ข้อที่1
SELECT P.ProductName,Price,QuantityInStock, C.CategoryName, V.VendorName
From Products P
join Vendors V on P.VendorID = V.VendorID
join Categories C on C.CategoryID = P.CategoryID;

#ข้อที่2
SELECT FirstName, LastName, Email, Phone, Address FROM Customers;

#ข้อที่3
SELECT o.OrderID, o.ProductID, o.VendorID, o.Quantity, P.ProductName, P.Price, C.CategoryName, V.VendorName, P.QuantityInStock
from OrderDetails o
join `joshua-homework`.Products P on P.ProductID = o.ProductID
join `joshua-homework`.Categories C on C.CategoryID = P.CategoryID
join `joshua-homework`.Vendors V on V.VendorID = o.VendorID;

ข้อที่5
SELECT MAX(o.Quantity) AS MaxQuantity , P.ProductName, P.Price , MAX(o.Quantity)*Price AS TotalSales
FROM OrderDetails o
join `joshua-homework`.Products P on P.ProductID = o.ProductID
GROUP BY o.Quantity
having MAX(o.Quantity) = 10;

#ข้อที่6
select  C.CustomerID, C.FirstName, C.LastName, C.Address, MAX(od.Quantity) AS MaxQuantity
from OrderDetails od
join `joshua-homework`.Orders O on O.OrderID = od.OrderID
join `joshua-homework`.Customers C on C.CustomerID = O.CustomerID
group by od.Quantity
having MAX(od.Quantity) = 10;

#ข้อที่7
select sum(o.TotalAmount) AS totalprice from Orders o;

#ข้อที่9
SELECT COUNT(DISTINCT o.CustomerID) AS customer_Order
FROM Orders o;