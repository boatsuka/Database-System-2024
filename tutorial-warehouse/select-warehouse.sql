-- ตัวอย่าง SQL พร้อมคำอธิบายทั้งหมด

-- 1. LIMIT
SELECT *
FROM Products
LIMIT 10;
-- LIMIT ใช้เพื่อจำกัดจำนวนแถวที่จะแสดงออกมา ในที่นี้คือแสดงสินค้า 10 รายการแรก

-- 2. MIN
SELECT MIN(Price) AS MinPrice
FROM Products;
-- MIN คือฟังก์ชันที่ใช้หาค่าน้อยที่สุดในคอลัมน์ Price และตั้งชื่อแฝงเป็น MinPrice

-- 3. MAX
SELECT MAX(Price) AS MaxPrice
FROM Products;
-- MAX คือฟังก์ชันที่ใช้หาค่ามากที่สุดในคอลัมน์ Price และตั้งชื่อแฝงเป็น MaxPrice

-- 4. COUNT
SELECT COUNT(*) AS NumProducts
FROM Products;
-- COUNT คือฟังก์ชันที่ใช้นับจำนวนแถวทั้งหมดในตาราง Products และตั้งชื่อแฝงเป็น NumProducts

-- 5. AVG
SELECT AVG(Price) AS AvgPrice
FROM Products;
-- AVG คือฟังก์ชันที่ใช้หาค่าเฉลี่ยในคอลัมน์ Price และตั้งชื่อแฝงเป็น AvgPrice

-- 6. SUM
SELECT SUM(TotalAmount) AS TotalSales
FROM Orders;
-- SUM คือฟังก์ชันที่ใช้หาผลรวมของค่าในคอลัมน์ TotalAmount จากตาราง Orders และตั้งชื่อแฝงเป็น TotalSales

-- 7. LIKE
SELECT *
FROM Products
WHERE ProductName LIKE 'เสื้อ%';
-- LIKE ใช้ในการค้นหาข้อมูลที่ตรงกับ pattern ที่กำหนด (ในที่นี้คือชื่อสินค้าที่เริ่มต้นด้วย "เสื้อ")

-- 8. IN
SELECT *
FROM Products
WHERE CategoryID IN (1, 2, 3);
-- IN ใช้เปรียบเทียบค่าในคอลัมน์กับค่าในลิสต์ที่กำหนด (ในที่นี้คือ CategoryID เป็น 1, 2 หรือ 3)

-- 9. BETWEEN
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '2024-01-01' AND '2024-06-30';
-- BETWEEN ใช้ในการเลือกข้อมูลที่อยู่ระหว่างช่วงที่กำหนด (ในที่นี้คือรายการสั่งซื้อที่อยู่ในช่วงวันที่ 1 มกราคม 2024 ถึง 30 มิถุนายน 2024)

-- 10. AS
SELECT ProductID, ProductName AS Name
FROM Products;
-- AS ใช้เพื่อตั้งชื่อแฝงให้กับคอลัมน์หรือตารางย่อย (ในที่นี้คือ ProductName ถูกตั้งชื่อแฝงเป็น Name)

-- 11. UNION
SELECT ProductID, ProductName
FROM Products
UNION
SELECT CategoryID, CategoryName
FROM Categories;
-- UNION ใช้เพื่อรวมผลลัพธ์จากสองคำสั่ง SELECT ที่มีโครงสร้างคอลัมน์เดียวกัน (ในที่นี้คือรวมข้อมูล ProductID และ ProductName จากตาราง Products และ CategoryID และ CategoryName จากตาราง Categories)

-- 12. GROUP BY
SELECT CategoryID, COUNT(*) AS NumProducts
FROM Products
GROUP BY CategoryID;
-- GROUP BY ใช้สำหรับจัดกลุ่มแถวตามคอลัมน์ที่กำหนด (ในที่นี้คือนับจำนวนสินค้าในแต่ละ CategoryID)

-- 13. HAVING
SELECT CategoryID, COUNT(*) AS NumProducts
FROM Products
GROUP BY CategoryID
HAVING COUNT(*) > 5;
-- HAVING ใช้สำหรับกรองกลุ่มของข้อมูลที่ได้จาก GROUP BY ด้วยเงื่อนไขที่กำหนด (ในที่นี้คือแสดง CategoryID ที่มีสินค้ามากกว่า 5 รายการ)

-- 14. EXISTS
SELECT *
FROM Customers c
WHERE EXISTS (SELECT *
              FROM Orders o
              WHERE o.CustomerID = c.CustomerID);
-- EXISTS ใช้สำหรับตรวจสอบว่ามีการเลือกข้อมูลจากคำสั่ง SELECT ย่อยหรือไม่ (ในที่นี้คือแสดงลูกค้าที่มีอย่างน้อยหนึ่งรายการสั่งซื้อ)

-- 15. ANY, ALL
SELECT *
FROM Products p
WHERE QuantityInStock > ALL (SELECT QuantityInStock
                             FROM Products
                             WHERE CategoryID = 1);
-- ANY, ALL ใช้สำหรับเปรียบเทียบค่าของคอลัมน์กับค่าที่เป็นส่วนหนึ่งของคำสั่ง SELECT ย่อย (ในที่นี้คือเลือกสินค้าที่มีจำนวนสินค้าที่มีในคลังมากกว่าทุกสินค้าใน CategoryID ที่เป็น 1)

-- 16. CASE
SELECT ProductName,
       QuantityInStock,
       CASE
           WHEN QuantityInStock > 100 THEN 'มีสินค้าเพียงพอ'
           WHEN QuantityInStock > 0 THEN 'มีสินค้าเหลือน้อย'
           ELSE 'สินค้าหมด'
           END AS StockStatus
FROM Products;
-- CASE ใช้สำหรับปรับแต่งผลลัพธ์ขึ้นอยู่กับเงื่อนไขที่กำหนด (ในที่นี้คือแสดงสถานะของสินค้าว่ามีสินค้าเพียงพอ, มีสินค้าเหลือน้อย หรือ สินค้าหมด)