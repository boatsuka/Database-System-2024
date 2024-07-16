#ข้อที่ 1
select p.ProductName, p.Price, p.QuantityInStock, V.VendorName, C.CategoryName from Products p
join panda.Vendors V on V.VendorID = p.VendorID
join panda.Categories C on C.CategoryID = p.CategoryID;

#ข้อที่ 2
select CustomerID,FirstName,LastName,Email,Phone,Address FROM Customers;

#ข้อที่ 3
select od.OrderID,P.ProductName,od.Quantity,V.VendorName,P.Price,C.CategoryName, P.QuantityInStock from OrderDetails od
join panda.Products P on P.ProductID = od.ProductID
join panda.Vendors V on V.VendorID = od.VendorID
join panda.Categories C on C.CategoryID = P.CategoryID;

#ข้อที่5
select MAX(o.Quantity) AS TheMostSoldQuantity , P.ProductName, P.Price , MAX(o.Quantity)*Price AS TotalSales
from OrderDetails o
join panda.Products P on P.ProductID = o.ProductID
group by o.Quantity
having MAX(o.Quantity) = 10;

#ข้อที่7
select sum(o.TotalAmount) AS totalprice from Orders o;





