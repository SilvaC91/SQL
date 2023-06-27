select m.name, i.NAME  from meal m  
inner join ingredient i on I.MEAL_ID = M.MEAL_ID 
where i.NAME = "garlic";

select count(distinct m.NAME)  from meal m  
inner join ingredient i on I.MEAL_ID = M.MEAL_ID 
where  i.VEGETARIAN;
