CREATE TABLE CUSTOMER(
  ID INT AUTO_INCREMENT PRIMARY KEY,
  FIRST_NAME VARCHAR(255),
  LAST_NAME VARCHAR (255),
  ADDRESS VARCHAR (255),
  DOB DATE
); 

INSERT INTO CUSTOMER(FIRST_NAME, LAST_NAME, ADDRESS, DOB)
VALUES("Carlo", "Gioia", "Via XX Settembre", "1957-05-06"),
      ("Giulia", "Di Domenico", "Via Adige", "1995-01-31"),
      ("Federica", "Bernardi", "Via Milano", "1990-08-12"),
      ("Marco", "Bianchi", "Via Varesina", "1989-06-22"),
      ("Sofia", "Gallo", "Via Vitani", "1975-11-17");
      
UPDATE CUSTOMER
SET FIRST_NAME = "Pino"
WHERE ID = 1;

UPDATE CUSTOMER
SET LAST_NAME = "Rossi"
WHERE ID = 4;

UPDATE CUSTOMER
SET ADDRESS = "Piazza IV Novembre"
WHERE ID = 3;

DELETE FROM CUSTOMER
WHERE ID = 1;

TRUNCATE CUSTOMER;



#Look at the tables below and write which column(s) you think would make a good primary key.

#Question

CREATE TABLE Customers (
 customer_id INT NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(255) NOT NULL,
 last_name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 PRIMARY KEY (customer_id)
); 
#Answer
#customer_id


#Question

CREATE TABLE Products (
 product_name VARCHAR(255) NOT NULL,
 product_description VARCHAR(255) NOT NULL,
 product_price DECIMAL(10, 2) NOT NULL,
 product_quantity INT NOT NULL
);
#Answer
#product_name


#Question

CREATE TABLE Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 customer_id INT NOT NULL,
 expected_arrival_time DATE
);
#Answer
#order_id


#Question

CREATE TABLE Product_Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 product_name VARCHAR(255) NOT NULL,
 total_revenue DOUBLE
);
#Answer
#order_id

