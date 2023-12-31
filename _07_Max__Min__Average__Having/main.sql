
CREATE TABLE MEAL (
  NAME VARCHAR(255),
  PRICE DOUBLE, 
  CALORIES INT
);

CREATE TABLE INGREDIENT (
  NAME VARCHAR(255),
  CONTAINS_LACTOSE BOOLEAN,
  VEGETARIAN BOOLEAN,
  VEGAN BOOLEAN,
  GLUTEN_FREE BOOLEAN,
  PRICE DOUBLE
);

INSERT INTO INGREDIENT(NAME, CONTAINS_LACTOSE ,VEGETARIAN, VEGAN, GLUTEN_FREE, PRICE)
VALUES("EGGS", FALSE, TRUE, FALSE, TRUE, 1.50);

INSERT INTO INGREDIENT(NAME, CONTAINS_LACTOSE ,VEGETARIAN, VEGAN, GLUTEN_FREE, PRICE)
VALUES("BREAD", FALSE, TRUE, TRUE, FALSE, 3.20);

INSERT INTO INGREDIENT(NAME, CONTAINS_LACTOSE ,VEGETARIAN, VEGAN, GLUTEN_FREE, PRICE)
VALUES("BEEF PATTY", FALSE, FALSE, FALSE, TRUE, 5.00);

INSERT INTO INGREDIENT(NAME, CONTAINS_LACTOSE ,VEGETARIAN, VEGAN, GLUTEN_FREE, PRICE)
VALUES("LETTUCE", FALSE, TRUE, TRUE, TRUE, 0.99);

INSERT INTO INGREDIENT(NAME, CONTAINS_LACTOSE ,VEGETARIAN, VEGAN, GLUTEN_FREE, PRICE)
VALUES("YOGHURT", TRUE, TRUE, FALSE, TRUE, 1.29);

INSERT INTO MEAL(NAME, PRICE, CALORIES)
VALUES ('Spaghetti Bolognese', 12.99, 650),
('Grilled Chicken Sandwich', 8.99, 800),
('Pesto Pasta', 10.99, 550),
('Steak and Mash', 19.99, 800),
('Sushi Platter', 15.99, 700);

CREATE TABLE MEAL_ORDER (
  TIME_MEAL_ORDERED TIMESTAMP DEFAULT NOW(),
  MEAL_NAME VARCHAR(255),
  PRICE DOUBLE
);
  
    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME, PRICE) 
    VALUES (NOW(), 'Spaghetti Bolognese', 12.99);

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME, PRICE) 
    VALUES (DATE_ADD(NOW(), INTERVAL 1 HOUR), 'Grilled Chicken Sandwich', 8.99);

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME, PRICE) 
    VALUES (DATE_ADD(NOW(), INTERVAL 2 HOUR), 'Pesto Pasta', 10.99);

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME, PRICE) 
    VALUES (DATE_ADD(NOW(), INTERVAL 3 HOUR), 'Pesto Pasta', 10.99);

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME, PRICE) 
    VALUES (DATE_ADD(NOW(), INTERVAL 4 HOUR), 'Grilled Chicken Sandwich', 8.99);

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME, PRICE) 
    VALUES (DATE_ADD(NOW(), INTERVAL 5 HOUR), 'Pesto Pasta', 10.99);

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME, PRICE) 
    VALUES (DATE_ADD(NOW(), INTERVAL 6 HOUR), 'Spaghetti Bolognese', 12.99);

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME, PRICE) 
    VALUES (DATE_ADD(NOW(), INTERVAL 7 HOUR), 'Pesto Pasta', 10.99);

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME, PRICE) 
    VALUES (DATE_ADD(NOW(), INTERVAL 8 HOUR), 'Pesto Pasta', 10.99);

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME, PRICE) 
    VALUES (DATE_ADD(NOW(), INTERVAL 9 HOUR), 'Spaghetti Bolognese', 12.99);


SELECT NAME, MAX(PRICE) 
FROM MEAL
WHERE CALORIES > 500;

SELECT AVG(CALORIES)
FROM MEAL
WHERE PRICE > 15;

SELECT MAX(PRICE) AS MAX_PRICE
FROM MEAL
HAVING MAX_PRICE > 5;

SELECT NAME, PRICE
FROM MEAL   
WHERE PRICE < (SELECT AVG(PRICE) FROM MEAL);

SELECT NAME, PRICE, CALORIES 
FROM MEAL   
WHERE PRICE < (SELECT AVG(PRICE) FROM MEAL) AND CALORIES > 600;



