--DROP TABLE Orders
CREATE TABLE Orders (
    OrderId INT ,
    HangId INT,
    FOREIGN KEY (HangId) REFERENCES Hang(HangId)
);

INSERT INTO Orders VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

--DROP TABLE Hang
CREATE TABLE Hang (
    HangId INT PRIMARY KEY,
    TenHang NVARCHAR(50),
    Dia_Chi NVARCHAR(100),
    Tel NVARCHAR(20)
);

INSERT INTO Hang VALUES 
(1, 'A', 'Address A', '123456789'),
(2, 'B', 'Address B', '123456781'),
(3, 'C', 'Address C', '123456782'),
(4, 'D', 'Address D', '123456783'),
(5, 'A', 'Address A', '123456789'),
(6, 'A', 'Address A', '123456769');
--DROP TABLE Products
CREATE TABLE Products (
    HangID INT PRIMARY KEY,
    Products NVARCHAR(50),
    MoTa NVARCHAR(100),
    DonVi NVARCHAR(20),
    Gia MONEY,
    SoLuong INT
);

INSERT INTO Products VALUES
(1, N'Máy tính T450', N'Máy nhập cũ', N'Chiếc', 1000, 10),
(2, N'Điện thoại Nokia 5670', N'Điện thoại đang hot', N'Chiếc', 200, 200),
(3, N'Máy In Samsung 450', N'Máy in đang loại bình', N'Chiếc', 100, 10),
(4, N'IPhone 12', N'Máy nhập cũ', N'Chiếc', 100, 30),
(5, N'Cục gạch Nokia', N'Điện thoại cũ', N'Chiếc', 200, 20),
(6, N'Redmi Note 12', N'Máy đang hot', N'Chiếc', 300, 300);
SELECT * FROM Orders
SELECT * FROM Hang
SELECT * FROM Products
----------------------------------4a
SELECT * FROM Hang INNER JOIN Orders ON Hang.HangId = Orders.HangId
-----------------------------------4b
SELECT * FROM Products
-----------------------------------5a
SELECT TenHang FROM Hang
ORDER BY TenHang Desc
----------------------------------5b
SELECT Products FROM Products
ORDER BY Products DESC
----------------------------------5c
SELECT * FROM Hang
WHERE TenHang LIKE 'A'
--------------------------------5d
SELECT * FROM Products
WHERE SoLuong < 11 
------------------------------5e
SELECT *
FROM Products	
INNER JOIN Hang ON Products.HangId = Hang.HangId
WHERE Hang.TenHang = 'A';
-----------------------------6a
SELECT TenHang, COUNT(*) [Số_Hãng]
FROM Hang
GROUP BY TenHang
-----------------------------6b
SELECT COUNT(DISTINCT Products) AS SoMatHang
FROM Products;
----------------------------6c
SELECT Hang.TenHang AS TenHang,
       COUNT(DISTINCT Products.Products) [TongSoLoaiSanPham]
FROM Hang
INNER JOIN Products ON Hang.HangId = Products.HangId
GROUP BY Hang.TenHang;
----------------------------6d
SELECT COUNT(DISTINCT Products) [TongSoDauSanPham]
FROM Products;
