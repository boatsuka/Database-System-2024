SELECT ProductName,Price,QuantityInStock,VendorName,CategoryName
from Products,Vendors, Categories;

SELECT *
FROM Customers;

SELECT *
FROM Orders O join OrderDetails D on O.OrderID = D.OrderDetailID;

SELECT YEAR(OrderDate), MONTH(OrderDate), SUM(TotalAmount)
FROM OrderDetails join warehouse.Orders O on O.OrderID = OrderDetails.OrderID;

SELECT ProductName, Quantity, UnitPrice, (Quantity*UnitPrice) AS Total
FROM Products P join OrderDetails D on P.ProductID = D.OrderDetailID where Quantity > 9;

SELECT CustomerID, FirstName, LastName, Address, Quantity
FROM Customers C join OrderDetails D on C.CustomerID = D.OrderDetailID where Quantity > 9;

SELECT  SUM(Quantity*UnitPrice) AS Total
FROM Products P join OrderDetails D on P.ProductID = D.OrderDetailID;

SELECT CategoryName,QuantityInStock
FROM Products P join  Categories C on P.CategoryID = C.CategoryID
GROUP BY C.CategoryName ;

SELECT COUNT(CustomerID) AS NumderCustomers
FROM Orders;

SELECT YEAR(OrderDate) AS Year, ProductName,SUM(Quantity*UnitPrice) AS TotalSales
FROM OrderDetails OD join Orders O on OD.OrderID = O.OrderID join Products P on OD.ProductID = P.ProductID
GROUP BY OrderDate, ProductName;

SELECT CategoryName, SUM(Quantity*UnitPrice) AS TotalSales
FROM Categories C join OrderDetails OD on C.CategoryID = OD.OrderDetailID join Products P on OD.ProductID = P.ProductID
GROUP BY CategoryName;




