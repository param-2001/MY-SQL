select floor(2.6);
select ceil(2.9);
select round(8.2);
select sqrt(121);
select power(8,3);
select abs(-5);
select abs(5);
select sign(-7);
select sign(7);
select mod(9,4);
select 8%4;
select rand();
select rand()*100;
select rand()*1000;
select rand()*50;

#------------------------------------------------------------------------- 
--            text function

select upper("param");
select lower("SHIVANI");
select trim("   shivpar   ");
select length("shivani shivu param");
select left("shivpar",3);
select right("shivpar",3);
select mid("paramdeep",2,5);
select substr("shivanisoni",2,6);
select substring("shivpar",2,5);
select instr("param","r");
select instr("param","a");
select replace("shiva","a","u");
select concat("shivu","soni","yadav");
select concat_ws("+","param","yadav","soni");
select reverse("param");
#----------------------------------------------------------
 -- date and time 
 select now();
 select curdate();
 select current_date();
 select curtime();
 select current_time();
 select year(now());
 select year("2025-02-12");
 select month(now());
select month("2003-07-17");
select monthname("2003-07-17");
select monthname(now());
select dayname(now());
select day("2025-05-27");
select dayname(now());
select dayofyear(now());
select dayofweek(now());
select dayofmonth(now());
select quarter(now());

#create database 
create database company;
# dlt krne k liye  create ki jagha drop ka use krege.

DROP table EMP;
use company;
create table EMP (
EMP_ID int,
EMP_NAME varchar(200),
SALARY FLOAT,
CITY CHAR(200)
);
SELECT EMP_ID,EMP_NAME,SALARY,CITY FROM EMP;

SELECT * FROM EMP;

INSERT INTO EMP(EMP_ID,EMP_NAME,SALARY,CITY)
VALUES(101,"AMAN",55000,"NOIDA"),
(102,"PARAM",66000,"DELHI"),
(103,"SHIVANI",66000,"DELHI");

SELECT * FROM EMP;

#--------------------
--------------------------------
INSERT INTO EMP 
VALUES (104,"SANJU",77000,"DELHI"),
(105,"VIJAY",77000,"RAJGARH"),
(106,"GUDDI",88000,"RAJOKRI"),
(107,"LALITA",88000,"GANGAPUR");

SELECT * FROM EMP;
#SHOW DATABASES
SHOW DATABASES;

#SHOW TABLE
SHOW TABLES;
 
 CREATE TABLE CUSTOMER (
CUSTOMER_ID INT,
CUSTOMER_NAME VARCHAR (200),
SALES FLOAT,
AMOUNT FLOAT
);

SELECT * FROM CUSTOMER; 
INSERT INTO CUSTOMER(CUSTOMER_ID,CUSTOMER_NAME,SALES,AMOUNT)
VALUES (101,"SHIVANI",200,1500),
(102,"PARAM",300,1600),
(103,"AMAN",400,1700),
(104,"DEEP",500,1800),
(105,"NAAM",600,1900),
(106,"SHIVI",700,2000);

SELECT * FROM CUSTOMER; 
#---------------------------------------------------------
-- MATHEMATICAL OPERATION  AMOUNT M SE KUCH minus KRNA HO SB M S

SELECT AMOUNT, 
AMOUNT-200 FROM CUSTOMER;
SELECT * FROM CUSTOMER;

SELECT * FROM CUSTOMER; 
 
SELECT CUSTOMER_ID, LOWER(CUSTOMER_NAME) AS NAME,
SALES,AMOUNT from CUSTOMER;

# COMBINE THREE COLUMN WITH COMMA ID NAME AMT

SELECT concat_ws(",","CUSTOMER_ID","NAME","AMOUNT");

# use of where ----------------------------------------
use company;
select * from marksheet WHERE CITY="BIHAR"; 

select * FROM marksheet WHERE CITY="DELHI";

select * FROM marksheet WHERE MARKS>400;

select * FROM marksheet where left(STUDENTS_NAME,1)="A";

select * FROM marksheet where right(STUDENTS_NAME,1)="R";

select * FROM marksheet where Roll_Number%2=0;

# Q. WRITE A QUERY TO SHOW THE
 #FIRST 3 ALPHABET OF NAME IN FIRSTS COLUMN AND LAST 3
# ALPHABET IN SECONDS COLUMN FROM MARKSHEET

select left(STUDENTS_NAME,3) AS FIRSTs,
right(STUDENTS_NAME,3) AS SECONDS
 FROM MARKSHEET;

# Q. SHOW THE DATA OF STUDENTS WHO DOESN't 
# BELONGS TO DELHI

select * FROM MARKSHEET WHERE CITY<>"DELHI";


#------------------------------------------------------
#logical operation

# use of "and". 

select * from marksheet where Gender="girl" and marks>400;


select * from marksheet where marks<350 AND city="haryana";

select Students_Name,Marks,Gender from marksheet
 where Roll_Number between 20 and 30
and marks between 310 and 350;

select * from marksheet where left(students_name,1)="P" and 
right(students_name,1)="A";

select * from marksheet where city="bihar" and marks between 380 and 420;

select * from marksheet where city="delhi" or city="bihar";

select * from marksheet where (city="delhi" or city="haryana") and gender="boy";

#----------------------------------------------------------------------------------------------------------

#TABLE KA NAM EMPLOYEES h

use company;

select * from employees;

# Q. SHOW THE DATA OF ALL EMPLOYEES
# WHERE DEPARTMENT IS NOT GIVEN.

select * FROM employees 
WHERE Department="";

# Q. SHOW THE DATA OF ALL EMPLOYEES
# WHERE CITY IS NOIDA AND patna
# DEPARTMENT IS DATA SCIENTIST

select * from employees where (city="noida" or city="patna")
and Department="data scientist";


# Q. SHOW THE DATA OF ALL EMPLOYEES
# WHERE SALARY IS BETWEEN 20K AND 40K 
# DEPATMENT IS DATA SCIENTIST.

select * FROM employees WHERE SALARY between 20000 AND 40000 
AND Department="DATA SCIENTIST";



# Q. SHOW THE NAME OF ALL EMPLOYEES
# WHOSE NAME STARTS WITH "A" OR "R"

 select EMP_NAME FROM employees where left(trim(emp_name),1)="a"
 or left(trim(emp_name),1)="r";

#--------------------------------------------------------------------------------

 # use of "in" or "not in". 

 
--  show a data of who live in noida patna jaipur
select * FROM employees WHERE CITY IN("noida","patna","jaipur");

--  show a data of who does not live in noida patna jaipur

select * from employees where city not in("noida","patna","jaipur");

# use of distinct ( it show unique things in table.)

# Q. how to  show the unique city?
select distinct city from employees;

-- Q. SHOW THE DATA OF STUDENT WITH NAME START
--  WITH VOVEL SOUND. ye marksheet table s h 

select * FROM marksheet WHERE left(trim(STUDENTS_NAME),1) IN ("A","E","I","O","U");

-- Q. SHOW THE DATA OF STUDENT WITH NAME START
--  WITH CONSONENT SOUND
select * FROM marksheet
 WHERE left(STUDENTS_NAME,1) NOT IN("A","E","I","O","U");

use company;
select * from marksheet;

# Q. show first name of students.

select Students_Name, left(students_name,instr(students_name," "))
 as ins from marksheet;
 # OR YE BHI USE KR SKTE H 
select Students_Name, substring_index(STUDENTS_NAME," ",1) FROM marksheet;


-- Q. show length of text without space.

select Students_Name,length(students_name)-1 as len from marksheet;

# -1 is liye kiya h kyuki in sb nam m 1 space h 

-- Q.show data of employees whose length is less than 12.ye employees table s h
select * from employees;
select * from employees where length(emp_name)<12;

-- Q. write a query and combine students_name and age.
-- shivu(21)
-- param(23)


select concat(students_name,"(", age,")") 
as combine from marksheet;

# H.W.----------------------------------------------

# Q. show LAST NAME OF STUDENTS 
# FROM MARKSHEET

select * from marksheet;

select STUDENTS_NAME, 
right(students_name,length(students_name)-instr(students_name," "))
as lasts FROM MARKSHEET;

# OR YE BHI LGA SKTE H 

select Students_Name, substring_index(students_name," ",-1) 
 as firsts from marksheet;


# Q. TOTAL NO. OF "A" IN NAME OF MARKSHEET
# ANS STUDENTS NAME KI LENGTH  NIKAL LENGE
# FR A KO SPACE S REPLACE KRDEGE


select * FROM marksheet;
select STUDENTS_NAME,
 length(STUDENTS_NAME)-length(REPLACE(lower(STUDENTS_NAME),"a",""))
FROM MARKSHEET;

# Q. SHOW UNIQUE CITY IN TABLE "EMPLOYEES"

select * FROM employees;
select distinct city FROM employees; 
#========================================================================================

# use of aggrigate--------------------
#TYPE 5 H MIN MAX AVG COUNT

# Q. SHOW TOTAL NO.OF STUDENTS
select COUNT(STUDENTS_NAME) from MARKSHEET;

#Q. SHOW THE MAX MARKS OF STUDENTS
select max(MARKS) FROM MARKSHEET;

# Q. SHOW THE MIN MARKS
select min(MARKS) FROM marksheet;

#.Q. SHOW THE AVG MARKS 
select avg(MARKS) FROM marksheet;

# Q. TOTAL NO. OF STUDENTS LIVE IN DELHI

select count(*) AS TOT FROM marksheet
WHERE CITY="DELHI";

# SHOW AVG MARKS OF GIRLS
select avg(MARKS) FROM marksheet 
WHERE Gender="GIRL" ;

select * FROM marksheet;
# SHOW MAX MARKS OF STUDENTS OF ROLL NO.
# BTW 1-20

select max(MARKS) FROM marksheet
where Roll_Number between 1 AND 20;

# SHOW MIN. MARKS WHO LIVE IN DELHI OR BIHAR

select MIN(MARKS) FROM marksheet
WHERE (CITY="DELHI") OR (CITY="BIHAR");

# select ALL STUDENTS WHO LIVES IN ASSQM OR HR.
select COUNT(*) FROM marksheet
WHERE (CITY="HARYANA") OR (CITY="ASSAM");

# SHOW MIN MAX AVG OF BIHAR STUDENTS

select min(MARKS) DF,max(MARKS) AD,avg(markS) AS NA
 FROM MARKSHEET;

# COUNT ALL UNIQUE CITY
select count(distinct CITY) FROM MARKSHEET;

select* FROM employees;

# COUNT ALL EMP WHERE DEPT NOT GIVEN

select count(EMP_NAME) FROM employees 
WHERE DEPARTMENT="";

# count all  emp whose name strt With r

select count(EMP_NAME) FROM employees 
WHERE left(trim(EMP_NAME),1)="R";

# COUNT AVG SALARY OF DATA ANALYST WHOSE AGE IS<30

select avg(SALARY) FROM employees 
WHERE Department="DATA ANALYST" AND AGE<30;

# count all the emp where department is given
select count(*) from employees where department<>"";

# Q.count duplicate city

select COUNT(*)- count(DISTINCT CITY) FROM employees;

# isme  total m s unique minus kr dege to douplicate ajayea

#--------------------------------------------------------------
# USE OF UNION AND UNION ALL

#SHOW THE DATA OF EMP FROM PATNA AND NOIDA
select* FROM employees WHERE CITY="PATNA" 
UNION ALL
select * FROM EMPLOYEES WHERE CITY="NOIDA";

# SHOW THE UNIQUE CITY
select CITY FROM employees
UNION 
select CITY FROM employees;

#----------------------------------------------------------------
# -------------sub query or nested query--------------------
use company;

select * from employees;
select avg(salary) from employees;

select avg(salary) from employees;
select * from employees where 
salary>(select avg(salary) from employees);

select min(age) from employees;
select * from employees where age=(select min(age) from employees);


select min(salary) from employees where Department="data scientist";

select * from employees where Department="data scientist" 
and salary=( select min(salary) from employees where Department="data scientist");

# ese krna handler

set@m=(
select min(salary) from employees where department="data analyst");  

select * from employees where Department="data analyst"
and Salary=@m;

set @x=(
select min(marks) from marksheet);
set @p=(
select max(marks) from marksheet);

select * from marksheet where marks= @x or marks =@p;

set @d=(
select min(marks) from marksheet where city="delhi" or city= "bihar"); 
set @e=( select max(marks) from marksheet where city="delhi" or city= "bihar");

select * from marksheet where marks=@d or marks=@e;


select avg(marks) from marksheet where city="bihar" and gender="girl";



select * from marksheet where marks>=354  and city="bihar" and gender="girl";


select max(length(students_name)) from marksheet;

select * from marksheet where
 length(students_name)=(select max(length(students_name))
 from marksheet);

select * from marksheet;
select min(age) from marksheet;
select max(age) from marksheet;

select * from marksheet where age=(select min(age) from marksheet)
or age=(select max(age) from marksheet);

select max(marks) from marksheet where city="delhi";
select * from marksheet where marks=(select max(marks) from marksheet where city="delhi");

select * from marksheet;

set @a= (select min(age) from marksheet);

select * from marksheet where age=@a;
set @p=(select avg(age) from marksheet where city="bihar");

select * from marksheet where age=@p;


select avg(age) from marksheet where city="bihar" ;

-- show the students of delhi who got more than avg marks
set @p=(select avg(marks) from marksheet where city="delhi");
select * from marksheet where marks>@p and city="delhi";

select avg(marks) from marksheet where city="delhi";

select * from marksheet where marks>(select avg(marks) from marksheet where city="delhi");

#------------------------------------------------------
# USE OF COMMIT   SB KAM PERMANENTLY HO JATA H FR WO
# CHNG NHI HO SKTA
use company;
select * from marksheet;
# truncate
truncate marksheet;
select * FROM marksheet;

# HOW TO ADD COLUMN IN TABLE
select *, left(EMP_NAME,2)  FROM emp;

# TYPES OF table
-- 1 EXISTING TABLE
-- 2 NON EXISTING TABLE

# USE OF ALTER :- PERMANENT CHNG 

# HOW TO ADD COLUMN IN TABLE
alter TABLE EMP ADD COLUMN BONUS FLOAT;
select * FROM EMP;

# BICH M C OLUMN ADD KRNA HO TO
ALTER TABLE EMP ADD COLUMN STATUS text AFTER SALARY;
select * FROM EMP;

# HOW TO DLT COLUMN
ALTER table EMP DROP column STATUS;
ALTER TABLE EMP DROP COLUMN BONUS;
select* FROM EMP;

# HOW TO RENAME COLUMN 
ALTER TABLE EMP rename COLUMN EMP_NAME TO EMP;
select * FROM EMP;
ALTER TABLE EMP rename COLUMN EMP TO EMP_NAME;
select * FROM EMP;

# HOW TO CHANGE DATA_TYPE
describe EMP;
# or 
desc emp;
alter table emp modify age varchar(200);

alter table emp modify age int;

# how to rename table name
alter table emp rename employees;
select  * from emp;
select * from employees;

alter table employees rename emp;
 
 # add 2 column firtst_name after emp_name 
 # and bonus at the end
alter table emp add column first_name text after emp_name,
add column bonus int;
select * from emp;

# add id in strting of table
alter table emp  add column id int first;
select * from emp;
use company;

-- Rename column header department to dept 
alter table emp rename column department  to dept;
select * from emp;
alter table emp rename column dept to department;

# delete :- use to dlt column acc to condition

-- delete data of all emp from agra 
delete from emp where city="agra";

set sql_safe_updates=0;
# delete firts 5 from emp
delete from emp limit 5;

# dlt alternate rows
delete from emp where SI No= %2=0;


#--------------------------------------------------------------------------------------------------------------

# use of update :- use to replace or add value
--  in a perticular cell

set SQL_SAFE_UPDATES=0;

# replace the gender boy as m and girl as f.
update marksheet set gender="m" where gender="boy";
update marksheet set gender="f" where gender="girl";
select * from marksheet;

# add a column name of marks2 and add 105 extra marks
# whose marks is greatter than 350

alter table marksheet add column marks2 int;
select * from marksheet;
update marksheet set marks2=marks+0.1*marks
where marks>350;

# jha 350 s km makrks h wo same aa jaye
update marksheet set marks2=marks where 
marks2=null;

# add hr where dept is blank
update emp set department="hr" where department=""; 
select * from emp;

# dlt extra space from emp name

update emp set emp_name= trim(emp_name);

# create a column and show 5% OF SALARY

ALTER TABLE EMP ADD COLUMN BONUS FLOAT AFTER SALARY;
UPDATE EMP SET BONUS=SALARY*0.5;

# ADD A COLUMN AND SHOW PERCENTAGE OF MARKS
ALTER TABLE marksheet ADD COLUMN PERCENTAGE TEXT;
UPDATE MARKSHEET SET 
PERCENTAGE=concat(ROUND(MARKS/5,1),"%");
select * FROM marksheet;


-- GROUP BY :- USE TO GROUP THE DATA OF SAME CATEGORY 
-- WITH THE HELP OF AGGRIGATE FUNCTION AND RETURN TABLE.
-- AGGRIGATE FUNCTION:- MIN MAX AVG COUNT SUM

# WRITE A QUERY TO SHOW THE MAX MARKS OF STUDENTS 
#OF ALL CITY

select CITY, max(MARKS) AS MAX_MARKS FROM marksheet
group by CITY;

# SHOW TNE AVG MARKS OF EACH CITY.
select CITY,AVG(MARKS) AS AVG_MARKS FROM MARKSHEET GROUP BY CITY;

# SHOW AVG MARKS OF STUDENTS OF EACH GENDER
select GENDER,avg(MARKS) FROM MARKSHEET group by GENDER;

# SHOW THE MIN AND MAX BY EACH CITY
select CITY,max(MARKS) AS MAX_MARKS ,
 min(MARKS) AS MIN_MARKS
FROM marksheet group by CITY;


select * FROM covid_data;

USE COMPANY;

# ADD NEW CASE IN CNFRM CASE AND DLT NEW CASE COLUMN

SET SQL_SAFE_UPDATES=0;

UPDATE covid_data SET confirmed=confirmed+`new cases`;
alter table covid_data drop column `new cases`;


# addd new recovered in recovered and dlt new recovered 
update covid_data set recovered=recovered+`new recovered`;

alter table covid_data drop column `new Recovered`;

select * from covid_data;

alter table covid_data rename column `Country/Region` to country;

# show top 10 country bases on confirmed case

select country, sum(confirmed) as cnf from covid_data
group by Country order by cnf desc limit 10;

# show the top 15 country by sum of death and confirmed

update covid_data set confirmed=confirmed+deaths;

select country,sum(Confirmed) as cnf from covid_data
group by country order by cnf desc limit 15;

select * from covid_data;

# show the bottom 10 contry base of sum of cnfrm case

select country,sum(confirmed) as cnf from covid_data
group by country order by cnf limit 10;

# show the sum of confirmed by each month

select monthname(date) as months,sum(confirmed) as cnf
from covid_data
group by months;

# show the cnf case by each country and filter
# where cnf cases are btw 10k and 20k

# having :- it is use to filter the data after group by. 

select country, sum(confirmed) as cnf from covid_data 
group by country having cnf between 10000 and 20000;

use company;


select * FROM marksheet;
select CITY,MAX(MARKS) AS MARKS 
FROM marksheet group by CITY;

-- SHOW THE ALL DETAILS OF MAX MARKS OF THE TOPPER 
-- STUDENTS OF EACH CITY

SELECT * FROM marksheet WHERE MARKS IN( 
select MAX(MARKS) AS MARKS 
FROM marksheet group by CITY);

# WRITE A QUERY TO SHOW THE MIN MARKS OF GIRLS IN EACH
# CITY WITH PROPER DETAILS

select * FROM marksheet WHERE MARKS IN( 
select min(MARKS) AS MARKS FROM marksheet
group by CITY,GENDER having GENDER="F");

-- create A TABLE TO SHOW THE SUM OF CONFIRM DEATHS
--  RECOVERED AND ACTIVE CASE BY CONTRY AND WHO REGION

select * FROM covid_data;

create TABLE CVD AS(
select `WHO REGION`,COUNTRY,
sum(CONFIRMED) AS CNF,
sum(DEATHS)AS DEATH,
SUM(RECOVERED) AS RECOVERED,
SUM(ACTIVE) AS ACTIVE
FROM COVID_DATA
GROUP BY `WHO REGION`,COUNTRY);

select * FROM CVD;

-- WRITE A QUERY TO SHOW THE STATUS OF STUDENTS
--  WHOSE MARKS IS GREATER THAN 350 THEN SHOW PASS
--  ELSE SHOW FAIL

select * FROM marksheet; 

select *, CASE 
WHEN MARKS>350 THEN"PASS"
ELSE "FAIL" END 
AS STATUS 
FROM marksheet;

-- WRITE A QUERY TO SHOW IF %age of marks is 
-- greater than 70% then show 1st then
-- greater than 58% then show 2nd then
-- greater than 40% then show 3rd then
-- show 3rd else fail

select *,case
when marks/5>70 then "1st"
when marks/5>58 then "2nd"
when marks/5>40 then "3rd"
else "fail" end as division 
from marksheet; 


select * from cvd;

set @a= (select avg(cnf) from cvd);
select *,case
when cnf> @a THEN "DANGER"
ELSE "SAFE" END AS STATUS FROM CVD;

use company;


-- WRITE A QUERY TO SHOW THE STATUS IF 
-- 		SALARY IS GREATER THAN 40K AND CITY IS NOIDA THEN SHOW "A"
--         IF SALARY LESS THAN 35K AND CITY PATNA OR JAIPUR THEN SHOW "B"
--         IF SALARY GREATR THAN 50K AND CITY IS NEW DELHI OR PATNA THEN SHWO "C"
--         ELSE "D"

select *,case
when salary>40000 and city="noida" then "a" 
when salary<35000 and city in("patna","jaipur") then"b"
when salary>50000 and city in("delhi" , "patna") then "c"
else "d"
end as salary_division
from emp;

-- WRITE A QUERY TO COUNT ALL EMPLOYEE
--  WHO JOINED BY EACH MONTH

select * from emp;

select monthname(doj) AS MONTH_NAME,
count(*) AS Joined_emp from emp
group by month_name;

-- WRITE A QUERY TO SHOW THE STATUS IF IF 
-- NAME STARTS WTH VOWEL SOUNDS THEN SHOW
 -- YES ELSE SHOW NO
 
select *,case
when left(trim(emp_name),1) in("a","e","i","o","u")
then "yes" else "no" end as status
from emp;

-- ------------------------------------------------
 
# use of "if"
# if=case

# show if age is greater than 40 than show
-- senior else junior

select *, if(age>40,"senior","junior") as status
from emp;

#-----------------------------------------------------------

-- use of joins   (most imp query)

select * from customer;
select * from orders;
select * from products;

# inner join

-- combine customer table with order table

select * from customer inner join
orders on
customer.CustomerID=orders.CustomerID;


# left join
-- combine customer table with order table

select * from customer left join
orders on
customer.CustomerID=orders.CustomerID;

# right join--------------------

-- combine customer table with order table

select * from customer right join
orders on 
customer.CustomerID=orders.CustomerID;

# how to remove the common column from 
-- retrive table (common column 2 bar nhi dikhna chiye)

-- combine customer table with order table

select orders.CustomerID,name,city,orderid,orderdate
from customer left join orders 
on customer.CustomerID=orders.CustomerID;


select * from sales_data;

-- 1. Retrieve all sales where Units Sold is greater than 300 and Profit is less than 120000. 

select * from sales_data where `Units Sold`>300 and profit<120000;


-- List all unique products sold in 'Mumbai'.

select distinct product from sales_data where city="mumbai";


-- 3. Find all records where either the Area is 'North' or Revenue is above 10,000 INR. 

select * from sales_data where area="north" or revenue>10000;


-- Check for any null values in the Profit column. 
select * from sales_data where Profit="null";


-- 5. Find all sales not from the city 'Delhi'.

select * from sales_data where City not in( "delhi");


-- 6. Increase Revenue by 10% for sales made in 'Bangalore'.

alter table sales_data add column inc_revenue float;

set sql_safe_updates=0;
update sales_data set inc_revenue=revenue*1.1  where city="banglore";

select * from sales_data;

update sales_data set revenue=revenue*1.1 where city="banglore";


-- 7. Find the maximum and minimum Revenue generated in each Area. 

select area,max(revenue),min(revenue) from sales_data group by area;

select * from sales_data;

--  8. Find products whose revenue is greater than the average revenue of all sales. 

select product from sales_data where revenue>(select avg(Revenue) from sales_data);


-- List cities where total units sold are higher than in 'Delhi'.

select * from sales_data;

select distinct city from sales_data 
where `units sold`>(select max(`Units Sold`) from
sales_data where city="delhi");


-- 10. Create a column showing 'High Profit' if Profit > 150000 else 'Low Profit'. 
 
select *,case
when profit>150000 then "high profit"
else "low profit" end as "profit or loss"
from sales_data;

-- 11. Get top 5 sales records by highest revenue
select * from sales_data;

select * from sales_data order by revenue desc limit 5;


-- 12. Get TOP 3 products whose total revenue is maximum

select Product,max(Revenue) from sales_data group by product limit 3;


-- Concatenate Product and City with a hyphen.

select concat_ws("-",product,city) as merge from sales_data;
 
 
 --  14. Find Data whose Area is North or East and Year should be 2022 or 2020

 select * from sales_data where trim(area) in ("north","east") and
right(date,4) in (2022,2020);
 
 
-- . Add a column of Bonus and Add 10% of revenue whose sales is above average sales else 
-- None
 
 alter table sales_data rename column inc_revenue to bonus;
 select * from sales_data;
 set@a=(select avg(revenue) from sales_data);


 update sales_data set bonus=revenue*0.1 
 where revenue>@a;
 
 -- 16. Show the total and Average Profit in each Year in East
 
select right(date,4) as years, 
sum(profit) as total, 
avg(profit) as average
from sales_data 
where trim(area)="east"
group by years;

#-----------------------------------------------------------------------------------------------
#joins

select * from customer;
select * from orders;
select * from products;

# inner joins

select * from customer as c
inner join orders o
on c.CustomerID=o.CustomerID;

-- join all the tables
 
select * from customer as c
inner join orders o 
on c.CustomerID=o.CustomerID
inner join products p
on o.OrderID=p.OrderID;


# combine the all table and show all detail of
-- customer of city delhi

select * from customer c
inner join orders o 
on c.CustomerID=o.CustomerID
inner join products p 
on o.OrderID=p.OrderID
where city="delhi";


select * from covid_data;

select T1.WHO_REGION,T1.QTR1,T2.QTR2 FROM 
(select WHO_REGION,sum(confirmed) as qtr1
from covid_data where quarter(date)=1
group by WHO_REGION) AS T1

INNER JOIN

(select WHO_REGION,sum(confirmed) as qtr2
from covid_data where quarter(date)=2
group by WHO_REGION) AS T2

ON T1.WHO_REGION=T2.WHO_REGION;

USE COMPANY;
select * from products;
select * from customer;
select * from orders;

# how to join 2 tables without joins

select * FROM customer C , orders O 
WHERE C.CUSTOMERID=O.CUSTOMERID;

# HOW TO JOIN 3 TABLE WITHOUT USE OF JOINS

select * from customer C ,orders O,products p
where C.CustomerID=O.CustomerID
AND O.OrderID=P.ORDERID;


# USE OF VIEW      ==============================================
# =====================================

select * FROM IPL;

-- CREATE TEAM VS TEAM FROM IPL TABLE


select concat_ws("  vs   ", T1.TEAM,T2.TEAM) as matches FROM IPL
AS T1 inner JOIN IPL AS T2
ON T1.ID>T2.ID;

select concat_ws("  vs  ", t1.team,t2.team) as matches from
 ipl as t1 inner join ipl as t2
on t1.id>t2.ID;

# yha p (>) ka use is liye kiya h kyu ki same team
-- vs same team nhi ho skta ye use krne s 1 team greater
-- than dusri team ho jayega jisse same team aamne samne nhi ayegi


# ---------------------------------------------------------------------------------------------

select * from emp;

# TCL TRANSACTION CONTROL LANGUAGE
-- ROLLBACK
-- SAVEPOINT
-- COMMIT

set AUTOCOMMIT=0;
delete FROM marksheet order by ROLL_NUMBER LIMIT 1;
select * FROM marksheet;
rollback;

select * FROM marksheet order by Roll_Number;

SET SQL_SAFE_UPDATES=0;

select * from marksheet order by Roll_Number;
delete FROM marksheet limit 1;
select * FROM marksheet;
rollback;

delete from marksheet order by Roll_Number limit 1;
select * from marksheet order by Roll_Number;

#----------------------------------------------------------

select * FROM marksheet;

savepoint xp;


alter table marksheet drop Gender;

delete from marksheet order by Roll_Number limit 5;

rollback to savepoint xp ;

select * from marksheet order by Roll_Number;


# -------------------------------------------------
 
--  USE OF "CTE" 

WITH CTE AS (
select * from EMP WHERE DEPARTMENT="DATA ANALYST")

select * FROM CTE;

 -- write a query to show the confirmed case by each 
 -- country and if confirmed case is greater than 50k
--  then show high else low 

select * from covid_data;

with cte as(
select country, sum(Confirmed) as cnf
 from covid_data group by country)

select *,if(cnf>50000,"high","low") as status
from cte;

with abc as (
select country,sum(confirmed) as cnf from covid_data 
group by country)

select *,if(cnf>50000,"high","low") as status from abc; 


-- WRITE A QUERY TO SHOW THE SUM OF DEATHS CASE BY EACH COUNTRY
-- AND SHOW THE STATUS IF DEATHS IS GREATER THAN 20000 THEN SHOW "YES"
-- ELSE SHOW "LOW"

with cte as (
select country,sum(deaths) as death from covid_data group by country)

select *,if(death>20000,"yes","low") from cte;


-- WRITE A QUERY TO SHOW THE DIVISION IF
-- 		MARKS IS GREATER THAN 70% THEN SHOW "FIRST DIV"
--         MARKS IS GREATER THAN 50% THEN SHOW "SECOND DIV"
--         MARKS IS GREATER THAN 40% THEN SHOW "THIRD DIV
--         ELSE SHOW FAIL        
--       AND COUNT TOTAL NUMBER OF STUDENTS BY DIVISION

SET AUTOCOMMIT=0;
with CTE AS (
select *,CASE
when MARKS/5>70 THEN "FIRST"
WHEN MARKS/5>50 THEN "second"
WHEN MARKS/5>40 THEN "THIRD"
ELSE "FAIL" END AS "DIVISION" FROM marksheet)
select DIVISION, count(*) from CTE group by DIVISION;
