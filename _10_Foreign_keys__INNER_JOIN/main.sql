select m.name, i.NAME  from meal m  
inner join ingredient i on I.MEAL_ID = M.MEAL_ID 
where i.NAME = "garlic";

select count(distinct m.NAME)  from meal m  
inner join ingredient i on I.MEAL_ID = M.MEAL_ID 
where  i.VEGETARIAN;

#select   m.NAME  from meal m  
#inner join ingredient i on I.MEAL_ID = M.MEAL_ID 
#where  (i.GLUTEN_FREE and i.VEGAN) and 
#group by m.NAME;

select COUNT(I.MEAL_ID) / COUNT(distinct M.MEAL_ID) from MEAL M  
inner join ingredient i on I.MEAL_ID = M.MEAL_ID;
