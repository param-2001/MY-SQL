-- HOW TO CHANGE THE DATA TYPE OF DATE
-- # date ka data type chng krna h

-- select * from orders;

-- alter table orders add column day_no text;

-- select *,left(order_date,2) from orders;
-- yha s day nikl jayega isko fr update kr 
--  dege day_ no m

--  update orders set day_no= left(order_date,2);
--  
-- ese hi month name nikl lege 

-- select *, substr(order_date,4,2) from orders;

-- alter table orders add column month_no text; 

-- update orders set month_no= substr(order_date,4,2);

-- ese hi year nikl lege

-- alter table orders add column year_no text; 

-- select *,right(order_date,4) from orders;

-- update orders set year_no=right(order_date,4);

-- select * from orders;
