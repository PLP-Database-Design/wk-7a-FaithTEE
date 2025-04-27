-- Question 1 (1NF)

CREATE TABLE Productdetail(
    OrderID INT,
    CustomerName VARCHAR(100),
    ProductName VARCHAR(100)
);

INSERT INTO Productdetail(OrderID, CustomerName, ProductName)
VALUES
(1, 'John Doe', 'Laptop'),
(1, 'John Doe', 'Mouse'),
(2, 'Jane Smith', 'Tablet'),
(2, 'Jane Smith', 'Keyboard'),
(3, 'Jane Smith', 'Mouse'),
(3, 'Emily Clark', 'Phone');

SELECT * FROM Productdetail;

-- Question 2 (2NF)

CREATE TABLE Oders(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE OrderItems(
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Oders(OrderID)
);

INSERT INTO Oders(OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

INSERT INTO OrderItems(OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

SELECT * FROM Oders;
SELECT * FROM OrderItems;