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
    TenHang NVARCHAR(50),
    Mota NVARCHAR(100),
    DonVi NVARCHAR(20),
    Gia MONEY,
    SoLuong INT,
    ThanhTien MONEY 
);
INSERT INTO Products VALUES
(N'Máy Tính T450',N'Máy nhập mới ',N'Chiếc',1000,1,1000),
(N'Điện thoại Nokia5670',N'Điện thoại đang hot',N'Chiếc',200,2,400),
(N'Máy In Samsung450',N'Máy in đang ế ',N'Chiếc',100,1,100);

SELECT * FROM Products
SELECT * FROM Customer
SELECT * FROM Orders
-----------------4a---------------------------
SELECT Name_C FROM Customer
------------------4b----------------------------
