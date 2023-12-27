﻿CREATE TABLE Employee (
	EmployeeID int PRIMARY KEY,
	Name Varchar(100),
	Tel char(11),
	Email varchar(30),
);
INSERT INTO Employee VALUES 
(01,'Join',12345678901,'join@example.com'),
(02,'Mary',11234356789,'mary@example.com'),
(03,'Petter',12315678901,'petter@example.com')
--DROP TABLE Group1
--DROP TABLE Project
CREATE TABLE Group1 (
    GroupID int PRIMARY KEY,
    GroupName varchar(30),
    LeaderID int,
    ProjectID int,
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
);
INSERT INTO Group1 VALUES
(1,'Group1',001,0001),
(2,'Group2',002,0002),
(3,'Group3',003,0003);

CREATE TABLE Project(
	ProjectID int PRIMARY KEY,
	ProjectName varchar (30),
	StartDate datetime,
	EndDate datetime,
	Period int ,
	Cost money
);
INSERT INTO Project VALUES 
(0001,'Project1','2023-1-1','2023-1-12',11,100.000),
(0002,'Project2','2023-2-1','2023-5-11',10,101.000),
(0003,'Project3','2022-4-1','2023-8-5',4,102.000);

CREATE TABLE GroupDetail (
    GroupID INT,
    EmployeeID INT,
    [Status] CHAR(20),
    PRIMARY KEY (GroupID, EmployeeID),
    FOREIGN KEY (GroupID) REFERENCES Group1(GroupID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

INSERT INTO GroupDetail VALUES
(1,01,'Dang lam'),
(2,02,'Sap xong'),
(3,03,'Sap lam')

SELECT * FROM Employee
SELECT * FROM Group1
SELECT * FROM Project
SELECT * FROM GroupDetail

------------------------3a------------------
SELECT * FROM Employee
------------------------3b------------------
SELECT *
FROM Employee 
JOIN GroupDetail ON GroupDetail.EmployeeID = Employee.EmployeeID
JOIN Group1 ON Group1.GroupID= GroupDetail.GroupID
JOIN Project ON Project.ProjectID = Group1.ProjectID
WHERE ProjectName = 'Project1'
----------------------3c--------------------
SELECT * FROM Employee
JOIN GroupDetail ON GroupDetail.EmployeeID=Employee.EmployeeID
JOIN Group1 ON Group1.GroupID=GroupDetail.GroupID
