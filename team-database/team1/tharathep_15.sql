1.
select ProductID,ProductName,Price,QuantityInStock,V.VendorName,CategoryID from Products  join Vendors V on Products.VendorID = V.VendorID
2.
select customerid, firstname, lastname, email, phone, address, createdat, updatedat, isdelete from Customers
3.
select ProductName,OrderID,OD.ProductID,Quantity,UnitPrice from Products join wardhouse.OrderDetails OD on Products.ProductID = OD.ProductID
4.
select year(O.OrderID) as year,month(O.OrderID) as month, sum(OD.UnitPrice* OD.Quantity) AS TotalPrice from Orders O join wardhouse.OrderDetails OD on O.OrderID = OD.OrderID
5.

6.
select  OD.OrderID,FirstName,LastName,TotalAmount,OD.Quantity
from Orders join Customers C on Orders.CustomerID = C.CustomerID
join OrderDetails join OrderDetails OD on Orders.OrderID = OD.OrderID

7.

8.
select  TotalAmount,ProductName,CategoryID,Quantity from Products P join Orders O join OrderDetails OD

9.

ข้อพิเศษ
1.
select  CategoryID, sum(OD.Quantity* OD.UnitPrice) as Total_sales from Products P join OrderDeฟtails OD on OD.OrderID = OD.OrderID group by P.CategoryID

