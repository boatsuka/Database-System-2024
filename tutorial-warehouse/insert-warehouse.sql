-- Insert data into Categories table
INSERT INTO Categories (CategoryName)
VALUES ('Electronics'),
       ('Clothing'),
       ('Books'),
       ('Home Appliances'),
       ('Toys'),
       ('Furniture'),
       ('Sports Equipment'),
       ('Beauty Products'),
       ('Jewelry'),
       ('Stationery');

-- Insert data into Vendors table
INSERT INTO Vendors (VendorName, ContactName, Email, Phone, Address)
VALUES ('ABC Electronics', 'John Doe', 'john.doe@abc.com', '123-456-7890', '123 Main Street, City, Country'),
       ('XYZ Fashion', 'Jane Smith', 'jane.smith@xyz.com', '987-654-3210', '456 Park Avenue, City, Country'),
       ('Books Galore', 'Mark Johnson', 'mark.johnson@booksgalore.com', '456-789-0123',
        '789 Center Road, City, Country'),
       ('Home Tech Solutions', 'Sarah Brown', 'sarah.brown@hometech.com', '321-654-9870',
        '321 Elm Street, City, Country'),
       ('Toyland', 'Mike Wilson', 'mike.wilson@toyland.com', '789-012-3456', '987 Oak Avenue, City, Country'),
       ('Comfort Furniture', 'Emily Davis', 'emily.davis@comfortfurniture.com', '567-890-1234',
        '654 Maple Lane, City, Country'),
       ('Sports Pro', 'Chris Evans', 'chris.evans@sportspro.com', '234-567-8901', '234 Pine Street, City, Country'),
       ('Beauty Plus', 'Rachel Clark', 'rachel.clark@beautyplus.com', '890-123-4567',
        '789 Cedar Avenue, City, Country'),
       ('Jewel World', 'Kevin White', 'kevin.white@jewelworld.com', '456-789-0123', '567 Birch Road, City, Country'),
       ('Stationery Haven', 'Laura Green', 'laura.green@stationeryhaven.com', '678-901-2345',
        '890 Spruce Drive, City, Country');

-- Insert data into Products table
INSERT INTO Products (ProductName, CategoryID, VendorID, Price, QuantityInStock)
VALUES ('Smartphone X', 1, 1, 599.99, 50),
       ('Laptop Y', 1, 1, 1299.99, 30),
       ('T-shirt Blue', 2, 2, 19.99, 100),
       ('Jeans Slim Fit', 2, 2, 49.99, 80),
       ('Book: Fantasy World', 3, 3, 14.99, 200),
       ('Microwave Oven', 4, 4, 199.99, 25),
       ('Action Figure: Superhero', 5, 5, 9.99, 150),
       ('Sofa Set', 6, 6, 899.99, 10),
       ('Tennis Racket', 7, 7, 79.99, 30),
       ('Perfume Floral', 8, 8, 49.99, 50);

-- Insert data into Customers table
INSERT INTO Customers (FirstName, LastName, Email, Phone, Address)
VALUES ('Alice', 'Smith', 'alice.smith@example.com', '123-456-7890', '123 Maple Street, City, Country'),
       ('Bob', 'Johnson', 'bob.johnson@example.com', '987-654-3210', '456 Oak Avenue, City, Country'),
       ('Charlie', 'Brown', 'charlie.brown@example.com', '456-789-0123', '789 Elm Road, City, Country'),
       ('Diana', 'Wilson', 'diana.wilson@example.com', '321-654-9870', '321 Cedar Lane, City, Country'),
       ('Eve', 'Davis', 'eve.davis@example.com', '789-012-3456', '987 Pine Drive, City, Country'),
       ('Frank', 'Miller', 'frank.miller@example.com', '567-890-1234', '654 Birch Street, City, Country'),
       ('Grace', 'Martinez', 'grace.martinez@example.com', '234-567-8901', '234 Spruce Avenue, City, Country'),
       ('Henry', 'Garcia', 'henry.garcia@example.com', '890-123-4567', '789 Center Street, City, Country'),
       ('Ivy', 'Lopez', 'ivy.lopez@example.com', '456-789-0123', '567 Main Road, City, Country'),
       ('Jack', 'Young', 'jack.young@example.com', '678-901-2345', '890 Park Boulevard, City, Country');

-- Insert data into Orders table
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
VALUES (1, '2024-07-01', 299.99),
       (2, '2024-07-02', 149.97),
       (3, '2024-07-03', 44.97),
       (4, '2024-07-04', 599.97),
       (5, '2024-07-05', 69.98),
       (6, '2024-07-06', 1799.95),
       (7, '2024-07-07', 399.96),
       (8, '2024-07-08', 999.95),
       (9, '2024-07-09', 99.99),
       (10, '2024-07-10', 149.97);

-- Insert data into OrderDetails table
INSERT INTO OrderDetails (OrderID, ProductID, VendorID, Quantity, UnitPrice)
VALUES (1, 1, 1, 1, 599.99),
       (2, 3, 2, 2, 19.99),
       (3, 5, 3, 3, 14.99),
       (4, 7, 4, 4, 199.99),
       (5, 9, 5, 5, 9.99),
       (6, 1, 1, 6, 899.99),
       (7, 3, 2, 7, 79.99),
       (8, 5, 3, 8, 49.99),
       (9, 7, 4, 9, 149.99),
       (10, 9, 5, 10, 29.99);