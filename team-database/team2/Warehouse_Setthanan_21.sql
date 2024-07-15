ข้อ1#
SELECT P.ProductName,Price,QuantityInStock, C.CategoryName, V.VendorName From Products P join Vendors V on P.VendorID = V.VendorID join Categories C on C.CategoryID = P.CategoryID;
ข้อ2#
SELECT Orders.OrderID,ProductName,TotalAmount,Quantity,OrderDate FROM Orders join OrderDetails OD on Orders.OrderID = OD.OrderID join Warehouse.Products P on OD.ProductID = P.ProductID;
ข้อ3#
SELECT O.CustomerID,OrderDate,TotalAmount,OrderDetailID,P.ProductID,P.CategoryID,UnitPrice,Quantity,OD.VendorID FROM Orders O JOIN OrderDetails OD on O.OrderID = OD.OrderID Join Products P on OD.ProductID = P.ProductID join Categories C on P.CategoryID = C.CategoryID;
ข้อ4#
SELECT YEAR(O.OrderID) AS year,MONTH(O.OrderID) As Month,OD.UnitPrice, SUM(OD.Quantity * OD.UnitPrice) AS TotalPrice FROM Orders AS O JOIN OrderDetails AS OD ON O.OrderID = OD.OrderID;
ข้อ5#
SELECT Orders.OrderID,P.ProductName,TotalAmount,Quantity from Orders join OrderDetails OD on Orders.OrderID = OD.OrderID join Products P on OD.ProductID = P.ProductID ORDER BY TotalAmount Desc LIMIT 1;
ข้อ6#
SELECT O.CustomerID,FirstName,LastName,Address,P.ProductName,TotalAmount,Quantity FROM Customers Join Warehouse.Orders O on Customers.CustomerID = O.CustomerID Join OrderDetails OD on O.OrderID = OD.OrderID JOIN Products P on P.ProductID = OD.ProductID ORDER BY Quantity DESC LIMIT  1;
ข้อ7#
-
ข้อ8#
SELECT Products.CategoryID,ProductName,QuantityInStock from Products ORDER BY CategoryID ASC;
ข้อ9#
-
ข้อพิเศษ 1#
SELECT p.CategoryID, SUM(od.Quantity * od.UnitPrice) AS total_sales FROM Products p JOIN OrderDetails od ON p.ProductID = od.ProductID GROUP BY p.CategoryID;
       2#
SELECT YEAR(O.OrderID) AS Year,MONTH(O.OrderID) AS Month ,ProductName,Quantity,TotalAmount FROM Orders O JOIN OrderDetails OD on O.OrderID = OD.OrderID Join Products P on OD.ProductID = P.ProductID GROUP BY CategoryID;