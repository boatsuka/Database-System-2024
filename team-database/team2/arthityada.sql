### 1.ดึงข้อมูลสินค้าทั้งหมดพร้อมรายละเอียด (ชื่อสินค้า, ราคา, จำนวนในสต็อก, ชื่อผู้ขาย, และหมวดหมู่ของสินค้า)
SELECT ProductName,Price,QuantityInStock,VendorName,CategoryName FROM Products,Vendors,Categories;
### 2
SELECT customerid, firstname, lastname, email, phone, address FROM Customers;
### 3
SELECT *
    FROM Orders O JOIN OrderDetails D on O.OrderID = D.OrderDetailID;
### 5
   SELECT
    p.ProductName,
    od.UnitPrice,
    SUM(od.Quantity) AS quantity,
    SUM(od.Quantity * od.UnitPrice) AS total
FROM
    OrderDetails od
JOIN
    Products p ON od.ProductID = p.ProductID where Quantity > 9;

### 9
SELECT COUNT(OrderID) AS NumbercustomID
FROM OrderDetails;

### ข้อพิเศษ: สรุปยอดขายรวมตามหมวดหมู่สินค้า
SELECT
    c.CategoryName,
    SUM(od.Quantity * od.UnitPrice) AS total_sales
FROM
    OrderDetails od
JOIN
    Products p ON od.ProductID = p.ProductID
JOIN
    Categories c ON p.CategoryID = c.CategoryID
JOIN
    Orders o ON od.OrderID = o.OrderID
GROUP BY
    c.CategoryName







