--DROP TABLE Orders 
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
);

INSERT INTO Orders VALUES
    ('1', '123', '2022-12-01'),
    ('2', '234', '2021-11-01'),
    ('3', '345', '2023-11-12'),
    ('4', '456', '2023-01-11');

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name_C NVARCHAR(50),
    Dia_Chi NVARCHAR(100),
    Tel INT,
	
);

INSERT INTO Customer VALUES
    ('123', N'Nguyễn Văn A', 'Address A', '123456789'),
    ('234', N'Nguyễn Văn B', 'Address B', '123456781'),
    ('345', N'Nguyễn Văn C', 'Address C', '123456782'),
    ('456', N'Nguyễn Văn D', 'Address D', '123456783');

--DROP TABLE Products
CREATE TABLE Products (
	ProductID INT PRIMARY KEY,
    TenHang NVARCHAR(50),
    Mota NVARCHAR(100),
    DonVi NVARCHAR(20),
    Gia MONEY,
    SoLuong INT,
    ThanhTien MONEY 
);
INSERT INTO Products VALUES
(1,N'Máy Tính T450',N'Máy nhập mới ',N'Chiếc',1000,1,1000),
(2,N'Điện thoại Nokia5670',N'Điện thoại đang hot',N'Chiếc',200,2,400),
(3,N'Máy In Samsung450',N'Máy in đang ế ',N'Chiếc',100,1,100);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    CONSTRAINT FK_OrderDetails_Order FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    CONSTRAINT FK_OrderDetails_Product FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO OrderDetails VALUES
    (1, 101, 201, 3, 25.99),
    (2, 102, 202, 2, 19.95),
    (3, 103, 203, 1, 9.99);

SELECT * FROM Products
SELECT * FROM Customer
SELECT * FROM Orders
SELECT * FROM OrderDetails
-----------------4a---------------------------
SELECT *
FROM Customer INNER JOIN Orders ON Orders.CustomerID = Customer.CustomerID
------------------4b----------------------------
SELECT TenHang,ProductID FROM Products
------------------4c-------------------------
SELECT * FROM Orders
--------------------5a--------------------------
SELECT Name_C FROM Customer
GROUP BY Name_C
ORDER BY Name_C ASC;
--------------------5b--------------------------
SELECT * FROM Products
ORDER BY Gia DESC;
----------------------5c----------------------
-------------------------------------------------
Create table Orders1 (
	OrderId INT,
	CustomerId INT,
	FOREIGN KEY 
);
INSERT INTO Orders1 VALUES 
('01','1'),
('02','2'),
('03','3'),
('04','4');

CREATE TABLE Customers1 (
	CustomerId
)

