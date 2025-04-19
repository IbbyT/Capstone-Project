CREATE TABLE ComputerParts(
    CategoryID      INT(11)         NOT NULL, 
    CategoryCode    VARCHAR(20)     NOT NULL,
    CategoryName    VARCHAR(255)    NOT NULL,
    Price           FLOAT(11)       NOT NULL,
    PRIMARY KEY(CategoryID)
);

INSERT INTO ComputerParts
(CategoryID, CategoryCode, CategoryName, Price)
VALUES
(1, 'RAM', '32GB Storage for PC', 150.99);


INSERT INTO ComputerParts
(CategoryID, CategoryCode, CategoryName, Price)
VALUES
(2, 'RAM', '64GB Storage for PC', 200.99);

INSERT INTO ComputerParts
(CategoryID, CategoryCode, CategoryName, Price)
VALUES
(3, 'MotherBoard', 'Gaming MotherBoard', 230.00);

INSERT INTO ComputerParts
(CategoryID, CategoryCode, CategoryName, Price)
VALUES
(4, 'MotherBoard', 'Gaming and WiFI motherboard', 250.00);

INSERT INTO ComputerParts
(CategoryID, CategoryCode, CategoryName, Price)
VALUES
(5, 'CPU', 'Intel Core', 300.00);

INSERT INTO ComputerParts
(CategoryID, CategoryCode, CategoryName, Price)
VALUES
(6, 'CPU', 'AMD Ryzen', 330.00);