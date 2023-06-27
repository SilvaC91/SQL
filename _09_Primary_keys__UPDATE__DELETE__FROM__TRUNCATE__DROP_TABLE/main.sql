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
