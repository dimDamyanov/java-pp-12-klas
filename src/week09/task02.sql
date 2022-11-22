CREATE TABLE sales (
    ID INT AUTO_INCREMENT,
    dateOfSale DATE,
    clientID INT NOT NULL REFERENCES clients(ID),
    paymentType INT,
    PRIMARY KEY (ID)
);

CREATE TABLE goodsType (
    ID INT AUTO_INCREMENT,
    typeName VARCHAR(20),
    PRIMARY KEY (ID)
);

CREATE TABLE goods (
    ID INT AUTO_INCREMENT,
    NAME VARCHAR(20),
    price DECIMAL(9,2),
    typeID INT NOT NULL REFERENCES goodsType(ID),
    PRIMARY KEY(ID)
);



CREATE TABLE cities (
    ID INT AUTO_INCREMENT,
    cityName VARCHAR(20),
    region VARCHAR(20),
    municipality VARCHAR(20),
    PRIMARY KEY (ID)
);

CREATE TABLE soldGoods (
    saleID INT NOT NULL REFERENCES sales(ID),
    goodsID INT NOT NULL REFERENCES goods(ID),
    quantity INT
);

CREATE TABLE clients (
    ID INT AUTO_INCREMENT,
    clientFName VARCHAR(20),
    clientLName VARCHAR(20),
    egn VARCHAR(10),
    cityID INT NOT NULL REFERENCES cities(ID),
    clientAddress VARCHAR(50),
    phoneNumber VARCHAR(10),
    PRIMARY KEY (ID)
);

ALTER TABLE goodsType ADD UNIQUE(typeName);
ALTER TABLE goods ADD CONSTRAINT CHK_GoodsPrice CHECK (goods.price > 0);