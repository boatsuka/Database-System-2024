-- Create Categories table
CREATE TABLE Categories
(
    CategoryID   INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL,
    createdAt    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt    TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    isDelete     BOOLEAN   DEFAULT FALSE
);

-- Create Vendors table
CREATE TABLE Vendors
(
    VendorID    INT AUTO_INCREMENT PRIMARY KEY,
    VendorName  VARCHAR(255) NOT NULL,
    ContactName VARCHAR(100),
    Email       VARCHAR(255),
    Phone       VARCHAR(20),
    Address     TEXT,
    createdAt   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt   TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    isDelete    BOOLEAN   DEFAULT FALSE
);

-- Create Products table
CREATE TABLE Products
(
    ProductID       INT AUTO_INCREMENT PRIMARY KEY,
    ProductName     VARCHAR(255)   NOT NULL,
    CategoryID      INT,
    VendorID        INT,
    Price           DECIMAL(10, 2) NOT NULL,
    QuantityInStock INT            NOT NULL,
    createdAt       TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt       TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    isDelete        BOOLEAN   DEFAULT FALSE,
    FOREIGN KEY (CategoryID) REFERENCES Categories (CategoryID),
    FOREIGN KEY (VendorID) REFERENCES Vendors (VendorID)
);

-- Create Customers table
CREATE TABLE Customers
(
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName  VARCHAR(100) NOT NULL,
    LastName   VARCHAR(100) NOT NULL,
    Email      VARCHAR(255),
    Phone      VARCHAR(20),
    Address    TEXT,
    createdAt  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    isDelete   BOOLEAN   DEFAULT FALSE
);

-- Create Orders table
CREATE TABLE Orders
(
    OrderID     INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID  INT,
    OrderDate   DATE           NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    createdAt   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt   TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    isDelete    BOOLEAN   DEFAULT FALSE,
    FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID)
);

-- Create OrderDetails table
CREATE TABLE OrderDetails
(
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID       INT,
    ProductID     INT,
    VendorID      INT,
    Quantity      INT            NOT NULL,
    UnitPrice     DECIMAL(10, 2) NOT NULL,
    createdAt     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt     TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    isDelete      BOOLEAN   DEFAULT FALSE,
    FOREIGN KEY (OrderID) REFERENCES Orders (OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products (ProductID),
    FOREIGN KEY (VendorID) REFERENCES Vendors (VendorID)
);
