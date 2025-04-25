CREATE TABLE Managers(
  ManagerID     INT(11)   NOT NULL    UNIQUE,
  emailAddress VARCHAR(255)  NOT NULL,
  password  CHAR(64)   NOT NULL,
  firstName  VARCHAR(60)  NOT NULL,
  lastName   VARCHAR(60)  NOT NULL,
  PRIMARY KEY (ManagerID)
);

INSERT INTO Managers
(ManagerID,emailAddress, password, firstName, lastName)
VALUES
(1,'frank@bfji.com', SHA2('$ecretP@sscode3#', 256), 'Frank', 'Geerwar-Amador');