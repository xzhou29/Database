-- Xin Zhou  Seat# D3
-- COSC 3380   Project 3
-- This is MY work
-- Will NOT disseminate                      
     
-- VIEW

/*  Create VIEW 1 ProductLineSales  */
DROP VIEW ProductLineSales;

CREATE VIEW ProductLineSales(ProductLineName, P_name, totalSale) AS
SELECT DISTINCT P.P_name AS P_name , L.ProductLineName AS ProductLineName, SUM(O.Quantity)AS totalSal
FROM Product P, OrderLine O, ProductLine L
where P.ProductID = O.ProductID AND P.ProductLineID = L.ProductLineID
GROUP BY ProductLineName, P_name;

-- Trigger

CREATE OR REPLACE TRIGGER StandardPriceUpdate 
  AFTER DELETE OR INSERT OR UPDATE ON Product
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
        
-- Create view SalestoDate
DROP VIEW SalestoDate;
CREATE VIEW SalestoDate(ProductID, P_Name, OrderedQuantity) AS 
SELECT P.ProductID AS ProductID , 
P.P_Name AS P_Name,  
SUM(O.Quantity) AS OrderedQuantity
FROM  OrderLine O, Product P
WHERE O.ProductID = P.ProductID
GROUP BY P.ProductID, P.P_Name
ORDER BY P.ProductID;

SELECT * FROM SALESTODATE;