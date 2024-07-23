SELECT ProductName,Price,QuantityInStock,VendorName,CategoryName
from Products,Vendors, Categories;

SELECT *
FROM Customers;

SELECT *
FROM Orders O join OrderDetails T on O.OrderID = T.OrderDetailID;

SELECT YEAR(OrderDate), MONTH(OrderDate), SUM(TotalAmount)
FROM OrderDetails join warehouse.Orders O on O.OrderID = OrderDetails.OrderID;

SELECT YEAR(OrderDate), MONTH(OrderDate), SUM(TotalAmount)
FROM OrderDetails join warehouse.Orders O on O.OrderID = OrderDetails.OrderID;

SELECT CustomerID, FirstName, LastName, Address, Quantity
FROM Customers C join OrderDetails T on C.CustomerID = T.OrderDetailID where Quantity > 9;

SELECT  SUM(Quantity*UnitPrice) AS Total
FROM Products P join OrderDetails T on P.ProductID = T.OrderDetailID;

SELECT CategoryName,QuantityInStock
FROM Products P join  Categories C on P.CategoryID = C.CategoryID GROUP BY C.CategoryID ;

SELECT CategoryName,QuantityInStock
FROM Products P join  Categories C on P.CategoryID = C.CategoryID GROUP BY C.CategoryID ;