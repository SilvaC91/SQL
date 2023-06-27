select m.name, i.NAME  from meal m  
inner join ingredient i on I.MEAL_ID = M.MEAL_ID 
where i.NAME = "garlic";

select m.NAME ,count(m.MEAL_ID)  from meal m  
inner join ingredient i on I.MEAL_ID = M.MEAL_ID 
where  i.VEGETARIAN
group by m.NAME  ; #DA RIVEDERE
