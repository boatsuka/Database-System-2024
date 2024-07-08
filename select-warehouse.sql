-- ตัวอย่างโค้ด SQL ที่ใช้งานร่วมกัน

-- INNER JOIN เชื่อมตาราง Products กับ Categories ด้วย CategoryID
SELECT p.ProductID, p.ProductName, c.CategoryName
FROM Products p
         INNER JOIN Categories c ON p.CategoryID = c.CategoryID;

-- RIGHT JOIN เชื่อมตาราง Products กับ Categories ด้วย CategoryID
SELECT p.ProductID, p.ProductName, c.CategoryName
FROM Products p
         RIGHT JOIN Categories c ON p.CategoryID = c.CategoryID;

-- CROSS JOIN ระหว่างตาราง Customers และ Products
SELECT c.CustomerID, c.FirstName, p.ProductID, p.ProductName
FROM Customers c
         CROSS JOIN Products p;

SELECT e1.EmployeeName, e2.EmployeeName AS ManagerName
FROM Employees e1
         INNER JOIN Employees e2 ON e1.ManagerID = e2.EmployeeID;
