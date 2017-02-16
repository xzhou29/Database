-- Xin Zhou  Seat# D3
-- COSC 3380   Lab 2
-- This is MY work
-- Will NOT disseminate
/* 1 Create Table Customer  */

DROP TABLE Customer CASCADE CONSTRAINTS;

CREATE TABLE Customer(CUSTOMERID INTEGER CONSTRAINT pk1 PRIMARY KEY, CustomerName CHAR(40),CustomerAddress CHAR(40),CustomerCity CHAR(20),
                      CustomerState CHAR(10),CustomerPostalCode CHAR(20),CustomerEmail CHAR(40), CustomerUserName CHAR(20), CustomerPassword CHAR(20)
                      );
DESCRIBE CUSTOMER;

/* 2 Create Table Order  */

DROP TABLE Orders CASCADE CONSTRAINTS;

CREATE TABLE Orders(OrderID  CHAR(20)CONSTRAINT pk2 PRIMARY KEY, OrderDate DATE, CUSTOMERID INTEGER, FOREIGN KEY(CustomerID) REFERENCES Customer);

DESCRIBE Orders;

/* 3 Create Table Product  */

DROP TABLE Product CASCADE CONSTRAINTS;

CREATE TABLE Product(ProductID INTEGER PRIMARY KEY, P_name CHAR(20),
              P_Finish CHAR(20), P_Price REAL,ProductLineID INTEGER, P_Photo BLOB);

DESCRIBE Product;
/* 4 Create Table ProductLine  */


DROP TABLE ProductLine CASCADE CONSTRAINTS;

CREATE TABLE ProductLine(ProductLineID  CHAR(20) CONSTRAINT pk4 PRIMARY KEY, ProductLineName CHAR(20));

DESCRIBE ProductLine;


/* 5 Create Table SalesTerritory  */

DROP TABLE SalesTerritory CASCADE CONSTRAINTS;

CREATE TABLE SalesTerritory(TerritoryID  INTEGER CONSTRAINT pk5 PRIMARY KEY, T_Name CHAR(20));

DESCRIBE SalesTerritory;


/* 6 Create Table SalesPerson  */

DROP TABLE SalesPerson CASCADE CONSTRAINTS;

CREATE TABLE SalesPerson(SalespersonID  INTEGER CONSTRAINT pk6 PRIMARY KEY, SalespersonName CHAR(20),SalespersonPhone CHAR(20), 
                        SalespersonEmail CHAR(30), SalespersonUserName CHAR(20), SalespersonPassword CHAR(20), TerritoryID INTEGER,
                        FOREIGN KEY (TerritoryID) REFERENCES SalesTerritory
                        );

DESCRIBE SalesPerson;


/* 7 Create Table OrderLine(Relation)  */
DROP TABLE OrderLine CASCADE CONSTRAINTS;

CREATE TABLE OrderLine( OrderID CHAR(20), ProductID INTEGER, Quantity INTEGER, Price REAL,
                      PRIMARY KEY(OrderID, ProductID),
                      FOREIGN KEY (OrderID)REFERENCES Orders,
                      FOREIGN KEY (ProductID )REFERENCES Product );

DESCRIBE OrderLine;


/* 8 Create Table DoesBusinessIn  */
DROP TABLE DoesBusinessIn CASCADE CONSTRAINTS;
CREATE TABLE DoesBusinessIn(CUSTOMERID INTEGER PRIMARY KEY, TerritoryID  INTEGER, 
                                 FOREIGN KEY(CustomerID) REFERENCES Customer,
                                 FOREIGN KEY(TerritoryID) REFERENCES SalesTerritory);
DESCRIBE DoesBusinessIn;  


/* 9 Create Table PriceUpdate  */
DROP TABLE PriceUpdate CASCADE CONSTRAINTS;
CREATE TABLE PriceUpdate(P_Name  CHAR(20), PU_Date Date , Old_Price REAL, New_Price REAL, ProductID INTEGER  CONSTRAINT pk9 PRIMARY KEY,
                          FOREIGN KEY(ProductID ) REFERENCES Product);
        
DESCRIBE PriceUpdate;                        
     
-- VIEW

/*  Create VIEW 1 ProductLineSales  */
DROP VIEW ProductLineSales CASCADE CONSTRAINTS;
CREATE VIEW ProductLineSales AS
SELECT Product.P_Name, OrderLine.Quantity, Orders.OrderDate FROM Product, OrderLine, Orders;
DESCRIBE ProductLineSales;

/*  Create VIEW 2 TotalValueForProduct   */
DROP VIEW TotalValueForProduct  CASCADE CONSTRAINTS;
CREATE VIEW TotalValueForProduct  AS
SELECT Product.P_Name, Product.P_Price, OrderLine.Quantity FROM Product, OrderLine;
DESCRIBE TotalValueForProduct ;

/*  Create VIEW 3 CustomerData    */
DROP VIEW CustomerData   CASCADE CONSTRAINTS;
CREATE VIEW CustomerData   AS
SELECT Customer.CustomerName, Product.P_Name, Product.P_Price FROM Customer, Product;
DESCRIBE CustomerData;

/*  Create VIEW 4 CustomerByStates     */
DROP VIEW CustomerByStates  CASCADE CONSTRAINTS;
CREATE VIEW CustomerByStates  AS
SELECT Customer.CustomerID, Customer.CustomerName, Customer.CustomerAddress, Product.P_Name FROM Customer, Product;
DESCRIBE CustomerByStates ;


/*  Create VIEW 5 PurchaseHistory     */
DROP VIEW PurchaseHistory   CASCADE CONSTRAINTS;
CREATE VIEW PurchaseHistory AS
SELECT Orders.OrderDate, OrderLine.Quantity, OrderLine.Price, Product.P_Name FROM Orders,OrderLine, Product;
DESCRIBE PurchaseHistory  ;


/*  Create VIEW 6 ItemPriceUpdate      */

DROP VIEW ItemPriceUpdate   CASCADE CONSTRAINTS;
CREATE VIEW ItemPriceUpdate AS
SELECT  Product.P_Name, Product.P_Price, PriceUpdate.PU_Date, PriceUpdate.Old_Price  FROM Product, PriceUpdate;
DESCRIBE ItemPriceUpdate   ;


-- Trigger
DROP TRIGGER StandardPriceUpdate;
CREATE OR REPLACE TRIGGER StandardPriceUpdate 
  BEFORE DELETE OR INSERT OR UPDATE ON Product
  FOR EACH ROW
WHEN (new.P_Price  > 0)
DECLARE
    newprice REAL;
    Oldprice REAL;
    
BEGIN
 
    Oldprice := :old.P_Price;
    newprice := :new.P_Price;

    dbms_output.put(' Old Price: ' || : old.P_Price);
    dbms_output.put(' New Price: ' || : new.P_Price);
END;
        


