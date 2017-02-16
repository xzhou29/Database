---- Xin Zhou  Seat# D3
-- COSC 3380   Project 2
-- This is MY work
-- Will NOT disseminate

--1 Insert values into the table Customer
INSERT INTO CUSTOMER(CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode) VALUES
(1, 'Contemporary Casuals', '1355 S Hines Blvd', 'Gainesville', 'FL', '32601-2871');
INSERT INTO CUSTOMER(CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode) VALUES
(2, 'Value Furnitures', '15145 S.W. 17th St.', 'Plano', 'TX', '75094-7734' );
INSERT INTO CUSTOMER VALUES
(3, 'Home Furnishings', '1900 Allard Ave', 'Albany', 'NY', '12209-1125',  'homefurnishings?@gmail.com', 'CUSTOMER1', 'CUSTOMER1#');
INSERT INTO CUSTOMER(CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode) VALUES
(4, 'Eastern Furniture', '1925 Beltline Rd.', 'Carteret', 'NJ', '07008-3188' );
INSERT INTO CUSTOMER(CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode) VALUES
(5, 'Impressions', '5585 Westcott Ct.', 'Sacramento', 'CA', '94206-4056' );
INSERT INTO CUSTOMER(CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode) VALUES
(6, 'Furniture Gallery', '325 Flatiron Dr.', 'Boulder', 'CO', '80514-4432');
INSERT INTO CUSTOMER(CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode) VALUES
(7, 'New Furniture', 'Palace Ave', 'Farmington', 'NM', '555');
INSERT INTO CUSTOMER(CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode) VALUES
(8, 'Dunkins Furniture', '7700 Main St', 'Syracuse', 'NY', '31590' );
INSERT INTO CUSTOMER(CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode) VALUES
(9, 'A Carpet', '434 Abe Dr', 'Rome', 'NY', '13440' );
INSERT INTO CUSTOMER(CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode) VALUES
(12, 'Flanigan Furniture', 'Snow Flake Rd', 'Ft Walton Beach', 'FL', '32548' );
INSERT INTO CUSTOMER(CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode) VALUES
(13, 'Ikards', '1011 S. Main St', 'Las Cruces', 'NM', '88001' );
INSERT INTO CUSTOMER(CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode) VALUES
(14, 'Wild Bills', 'Four Horse Rd', 'Oak Brook', 'Il', '60522' );
INSERT INTO CUSTOMER(CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode) VALUES
(15, 'Janet‘s Collection', 'Janet Lane', 'Virginia Beach', 'VA', '10012');
INSERT INTO CUSTOMER(CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode) VALUES
(16, 'ABC Furniture Co.', '152 Geramino Drive', 'Rome', 'NY', '13440');


--2 Insert values into the table SalesPerson
INSERT INTO SALESPERSON VALUES
(1, 'Doug Henny', '8134445555', 'salesperson?@gmail.com', 'SALESPERSON', 'SALESPERSON#',1 );
INSERT INTO SALESPERSON VALUES
(2, 'Robert Lewis', '8139264006', '', '', '', 2  );
INSERT INTO SALESPERSON VALUES
(3, 'William Strong', '5053821212', '', '', '', 3  );
INSERT INTO SALESPERSON VALUES
(4, 'Julie Dawson', '4355346677', '', '', '', 4  );
INSERT INTO SALESPERSON VALUES
(5, 'Jacob Winslow', '2238973498', '', '', '', 5  );


--3 Insert values into the table Territory
INSERT INTO SalesTerritory VALUES
(1, 'SouthEast');
INSERT INTO SalesTerritory VALUES
(2, 'SouthWest');
INSERT INTO SalesTerritory VALUES
(3, 'NorthEast');
INSERT INTO SalesTerritory VALUES
(4, 'NorthWest');
INSERT INTO SalesTerritory VALUES
(5, 'Central');

--4 Insert values into the table DoesBusinessIn
INSERT INTO DoesBusinessIn VALUES
(1, 1);
INSERT INTO DoesBusinessIn VALUES
(2, 2);
INSERT INTO DoesBusinessIn VALUES
(3, 3 );
INSERT INTO DoesBusinessIn VALUES
(4, 4 );
INSERT INTO DoesBusinessIn VALUES
(5, 5 );
INSERT INTO DoesBusinessIn VALUES
(6, 1 );
INSERT INTO DoesBusinessIn VALUES
(7, 2 );

--5 Insert values into the table Product

INSERT INTO Product VALUES 
(1, 'End Table', 'Cherry', 175, 1, utl_raw.cast_to_raw('C:\Users\XinZhou\Desktop\3380\Project2\table.jpg'));
INSERT INTO Product(ProductID, P_name, P_Finish, P_Price, ProductLineID) VALUES
(2, 'Coffee Table', 'Natural Ash', 200, 2  );
INSERT INTO Product(ProductID, P_name, P_Finish, P_Price, ProductLineID) VALUES
(3, 'Computer Desk', 'Natural Ash', 375, 2  );
INSERT INTO Product(ProductID, P_name, P_Finish, P_Price, ProductLineID) VALUES
(4, 'Entertainment Center', 'Natural Maple', 650, 3  );
INSERT INTO Product(ProductID, P_name, P_Finish, P_Price, ProductLineID) VALUES
(5, 'Writers Desk', 'Cherry', 325, 1  );
INSERT INTO Product(ProductID, P_name, P_Finish, P_Price, ProductLineID) VALUES
(6, '8-Drawer Desk', 'White Ash', 750, 2  );
INSERT INTO Product(ProductID, P_name, P_Finish, P_Price, ProductLineID) VALUES
(7, 'Dining Table', 'Natural Ash', 800, 2  );
INSERT INTO Product(ProductID, P_name, P_Finish, P_Price, ProductLineID) VALUES
(8, 'Computer Desk', 'Walnut', 250, 3  );


--6 Insert values into the table ProductLine
INSERT INTO ProductLine VALUES
(1, 'Cherry Tree' );
INSERT INTO ProductLine VALUES
(2, 'Scandinavia' );
INSERT INTO ProductLine VALUES
(3, 'Country Look' );

--7 Insert values into the table Orders
INSERT INTO Orders VALUES
(1001, '21/Aug/16', 1);
INSERT INTO Orders VALUES
(1002, '21/Jul/16', 8);
INSERT INTO Orders VALUES
(1003, '22/ Aug/16', 15);
INSERT INTO ORDERS VALUES
(1004, '22/Oct/16', 5);
INSERT INTO Orders VALUES
(1005, '24/Jul/16', 3);
INSERT INTO Orders VALUES
(1006, '24/Oct/16', 2);
INSERT INTO Orders VALUES
(1007, '27/ Aug/16', 5);
INSERT INTO Orders VALUES
(1008, '30/Oct/16', 12);
INSERT INTO Orders VALUES
(1009, '05/Nov/16', 4);
INSERT INTO Orders VALUES
(1010, '05/Nov/16', 1);


--8 Insert values into the table OrderLine

INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1001, 1, 2);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1001, 2, 2);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1001, 4, 1);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1002, 3, 5);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1003, 3, 3);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1004, 6, 2);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1004, 8, 2);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1005, 4, 4);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1006, 4, 1);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1006, 5, 2);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1006, 7, 2);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1007, 1, 3);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1007, 2, 2);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1008, 3, 3);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1008, 8, 3);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1009, 4, 2);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1009, 7, 3);
INSERT INTO OrderLine(OrderID, ProductID, QUANTITY) VALUES
(1010, 8, 10);

--9 Insert values into the table PriceUpdate







/*1  Which products have a standard price of less than $ 275?  */
SELECT P.P_NAME, P.P_PRICE
FROM PRODUCT P
WHERE P.P_PRICE < 275; 

/*2 List the unit price, product name, and product ID for all products in the Product table.   */

SELECT  P.P_PRICE, P.P_NAME, P.PRODUCTID
FROM PRODUCT P;


/*3 What is the average standard price for all products in inventory?   */

SELECT  SUM(P.P_PRICE) / COUNT(P.PRODUCTID )
FROM PRODUCT P;

/*4 How many different items were ordered on order number 1004?  */
SELECT O.PRODUCTID
FROM ORDERLINE O
WHERE O.ORDERID = 1004 ;

/*5 Which orders have been placed since 10/ 24/ 2010?   */
SELECT *
FROM ORDERS O
WHERE O.ORDERDATE = '24/Oct/16' ;

/*6 What furniture does COSC3380 carry that isn’t made of cherry?   */

SELECT P.P_NAME, P.P_FINISH
FROM PRODUCT P
WHERE P.P_FINISH <> 'Cherry';



/*7 List product name, finish, and standard price for all desks and all tables that cost more than $ 300 in the Product table.   */

SELECT P.P_NAME, P.P_FINISH, P.P_PRICE
FROM PRODUCT P
WHERE (P.P_NAME LIKE '%Desk%' OR P.P_NAME LIKE '%Table%' ) AND P.P_PRICE > 300;


/*8 Which products in the Product table have a standard price between $ 200 and $ 300?   */
SELECT P.P_NAME, P.P_PRICE
FROM PRODUCT P
WHERE  P.P_PRICE BETWEEN 200 AND 300;

/*9 List customer, city, and state for all customers in the Customer table whose address is
Florida, Texas, California, or Hawaii. List the customers alphabetically 
by state and alphabetically by customer within each state.   */

SELECT  C.CUSTOMERNAME, C.CUSTOMERCITY , C.CUSTOMERSTATE
FROM CUSTOMER C
WHERE (C.CUSTOMERSTATE = 'FL' OR C.CUSTOMERSTATE = 'TX' OR C.CUSTOMERSTATE = 'CA' OR C.CUSTOMERSTATE = 'HI')
ORDER BY  C.CUSTOMERSTATE, C.CUSTOMERNAME;

/*10 Count the number of customers with addresses in each state to which we ship.   */

SELECT COUNT(C.CUSTOMERADDRESS), C.CUSTOMERSTATE
FROM CUSTOMER C, ORDERS O
WHERE C.CUSTOMERID = O.CUSTOMERID 
GROUP BY C.CUSTOMERSTATE ;


/*11 Count the number of customers with addresses in each city to which we ship. List the cities by state.   */
SELECT COUNT(C.CUSTOMERADDRESS),  C.CUSTOMERCITY, C.CUSTOMERSTATE
FROM CUSTOMER C, ORDERS O
WHERE C.CUSTOMERID = O.CUSTOMERID
GROUP BY C.CUSTOMERCITY, C.CUSTOMERSTATE ;


/*12 Find only states with more than one customer.   */
SELECT COUNT(C.CUSTOMERADDRESS),  C.CUSTOMERSTATE
FROM CUSTOMER C, ORDERS O
WHERE C.CUSTOMERID = O.CUSTOMERID 
GROUP BY C.CUSTOMERSTATE 
Having COUNT(C.CUSTOMERADDRESS) > 1;

/*13 List, in alphabetical order, the product finish and the average standard price
for each finish for selected finishes having an average standard price less than 750.   */
SELECT P.P_FINISH, AVG(P.P_PRICE)
FROM PRODUCT P
GROUP BY P.P_FINISH
HAVING  AVG(P.P_PRICE) < 750
ORDER BY AVG(P.P_PRICE)ASC;


/*14 What is the total value of orders placed for each furniture product?   */

SELECT  P.P_NAME,  SUM(L.QUANTITY * P.P_PRICE)
FROM ORDERLINE L, PRODUCT P
WHERE L.PRODUCTID = P.PRODUCTID
GROUP BY P.P_NAME;


