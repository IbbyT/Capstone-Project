CREATE TABLE ComputerParts(
    ProductID      INT(11)         NOT NULL, 
    ProductCode    VARCHAR(20)     NOT NULL,
    ProductName    VARCHAR(255)    NOT NULL,
    Price           FLOAT(11)       NOT NULL,
    PRIMARY KEY(ProductID)
);

INSERT INTO ComputerParts
(ProductID, ProductCode, ProductName, Price)
VALUES
(1, 'RAM', '32GB Storage for PC', 150.99);


INSERT INTO ComputerParts
(ProductID, ProductCode, ProductName, Price)
VALUES
(2, 'RAM', '64GB Storage for PC', 200.99);

INSERT INTO ComputerParts
(ProductID, ProductCode, ProductName, Price)
VALUES
(3, 'MotherBoard', 'Gaming MotherBoard', 230.00);

INSERT INTO ComputerParts
(ProductID, ProductCode, ProductName, Price)
VALUES
(4, 'MotherBoard', 'Gaming and WiFI motherboard', 250.00);

INSERT INTO ComputerParts
(ProductID, ProductCode, ProductName, Price)
VALUES
(5, 'CPU', 'Intel Core', 300.00);

INSERT INTO ComputerParts
(ProductID, ProductCode, ProductName, Price)
VALUES
(6, 'CPU', 'AMD Ryzen', 330.00);