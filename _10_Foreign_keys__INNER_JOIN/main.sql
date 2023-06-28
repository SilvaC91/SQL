select m.name, i.NAME  from meal m  
inner join ingredient i on I.MEAL_ID = M.MEAL_ID 
where i.NAME = "garlic";

select count(distinct m.NAME)  from meal m  
inner join ingredient i on I.MEAL_ID = M.MEAL_ID 
where  i.VEGETARIAN;

select   M.NAME  from MEAL M  
inner join ingredient I1 on I1.MEAL_ID = M.MEAL_ID 
inner join ingredient I2 on I2.MEAL_ID = M.MEAL_ID 
where  (I1.GLUTEN_FREE and I2.VEGAN)
group by M.NAME;

select COUNT(I.MEAL_ID) / COUNT(distinct M.MEAL_ID) from MEAL M  
inner join ingredient i on I.MEAL_ID = M.MEAL_ID;

select m.NAME, count(i.NAME) as ingredient_per_meal_count  from meal m  
inner join ingredient i on I.MEAL_ID = M.MEAL_ID
group by m.NAME
having ingredient_per_meal_count > 3;



#Using the following table definitions, write an inner join for the two tables
  
CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT,
    NAME VARCHAR(255),
    ADDRESS VARCHAR(255)
);
CREATE TABLE ORDER (
    ORDER_ID INT,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    TOTAL_COST DECIMAL(10,2)
);
inner join ORDER on ORDER.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID


#Using the following table definitions, write an inner join for the two tables
  
CREATE TABLE PRODUCT (
    PRODUCT_ID INT,
    NAME VARCHAR(255),
    PRICE DECIMAL(10,2)
);
CREATE TABLE INVENTORY (
    PRODUCT_ID INT,
    STORE_ID INT,
    QUANTITY INT
);
inner join INVENTORY on INVENTORY.PRODUCT_ID = PRODUCT.PRODUCT_ID




