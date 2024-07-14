#1.ดึงข้อมูลสินค้าทั้งหมดพร้อมรายละเอียด (ชื่อสินค้า, ราคา, จำนวนในสต็อก, ชื่อผู้ขาย, และหมวดหมู่ของสินค้า)
select ProductID,ProductName , Price , QuantityInStock , VendorName , CategoryName from Products , Vendors , Categories;

#2. ดึงข้อมูลลูกค้าทั้งหมดพร้อมที่อยู่และข้อมูลติดต่อ
select customerid, firstname, lastname, phone, address from Customers;

#3. ดึงข้อมูลการสั่งซื้อทั้งหมดพร้อมรายละเอียดของสินค้าที่ถูกสั่งซื้อ
SELECT O.OrderID , CT.FirstName , CT.LastName ,P.ProductName, OD.Quantity, (OD.Quantity * OD.UnitPrice)
AS price ,O.OrderDate from Orders O
join Customers CT on O.CustomerID = CT.CustomerID
join OrderDetails OD on O.OrderID = OD.OrderID
join Products P on OD.ProductID = P.ProductID;

#4. ยอดขายรวมต่อเดือนในแต่ละปี
SELECT year(OrderDate) AS year, MONTH(OrderDate) AS month,sum((OD.Quantity * OD.UnitPrice)) AS pricepermonth
from Orders O join OrderDetails OD on O.OrderID = OD.OrderID;

#5. สินค้าขายดีที่สุดพร้อมจำนวนที่ขายและรายได้รวม
SELECT P.ProductName, max(OD.Quantity) AS Quantities, (max(OD.Quantity) * P.Price) AS Price from OrderDetails OD
join Products P on OD.ProductID = P.ProductID group by P.ProductName order by max(OD.Quantity) DESC limit 1;

#6. ลูกค้าที่มีการสั่งซื้อมากที่สุดพร้อมที่อยู่และจำนวนการสั่งซื้อ
SELECT CT.FirstName,CT.LastName,CT.Address,max(OD.Quantity) AS Quantities from Customers CT
join Orders O on CT.CustomerID = O.CustomerID
join OrderDetails OD on O.OrderID = OD.OrderID group by O.OrderID order by max(OD.Quantity) DESC LIMIT 1;

# 7. ยอดขายรวมจากการสั่งซื้อทั้งหมด
select sum((Quantity * UnitPrice)) AS Circulation from OrderDetails;

# 8. จำนวนสินค้าทั้งหมดในสต็อกตามหมวดหมู่
select P.QuantityInStock, C.CategoryName from Products P join Categories C on P.CategoryID = C.CategoryID
group by C.CategoryName;

# 9. จำนวนลูกค้าที่มีการสั่งซื้อ
SELECT COUNT(OrderDetailID) AS countOrder
FROM OrderDetails;


### ข้อพิเศษ: หายอดขายรวมของแต่ละสินค้าตามปีที่มีการสั่งซื้อ
SELECT YEAR(O.OrderDate) AS YEAR, P.ProductName,sum(OD.Quantity * P.Price) AS Price from Products P join OrderDetails OD on P.ProductID = OD.ProductID
join Orders O on OD.OrderID = O.OrderID group by P.ProductName;

### ข้อพิเศษ: สรุปยอดขายรวมตามหมวดหมู่สินค้า
SELECT C.CategoryName, sum(P.Price * OD.Quantity ) AS Price from Products P
JOIN Categories C on P.CategoryID = C.CategoryID JOIN OrderDetails OD on P.ProductID = OD.ProductID group by C.CategoryName;
