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


