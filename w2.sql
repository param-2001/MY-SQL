use sakila;
show tables;
select * from marksheet;

  use company;
  select * from covid_data;
  
  with cte as(
  select  * from emp where department="data analyst")
  
  select * from cte;
  
  with cte as(
  select country, sum(confirmed) as cnf from covid_data group by country)
  select *,case
  when cnf>50000 then "high"
  else "low" end as statu from cte; 
  
  
  
with cte as (
select country, sum(confirmed) as cnf from covid_data group by country)

  
  select *,if (cnf>50000,"high","low") as status from cte;
  
  
  use sakila;
  
select * from marksheet;
  
set sql_safe_updates=0;
alter table marksheet drop column division;



  
  alter table marksheet add column division enum("first","second","third");
  
  update marksheet set division = if (marks>350,"first",
  if(marks>300,"second","third"));
  
  update marksheet set division= if(marks>350,"first",
  if (marks>300,"second","third")) ;
  
  use sakila;
  
select * from marksheet;

# use of like, not like

--  STARTSWITH :-        A%

-- ENDSWITH :-          %A 

-- CONTAINS :-           %A%

-- LENGTH OF TEXT :- (______) REPRESENT LEGHTH JITNE TEXT
--                  UTNE UNDER SCORE 0 K SIDE WALA

-- STARTS AND ENDS WITH :-    P%A 
  
  # WRITE A QUERY TO SHOW THE DETAILS OF STUDENTS WHOSE NAME STARTS "WITH P"

select * from marksheet where Students_Name like "p%";

 -- WRITE A QUERY TO SHOW THE DETAILS OF STUDENTS WHOSE NAME
# NOT STARTS "WITH P"

select * from marksheet where Students_Name not like "p%";  
  
  
  -- WRITE A QUERY TO SHOW ALL DETAILS WHOSE NAME CONTAIN "V"

select * from marksheet where Students_Name like "%v%";

 -- WRITE A QUERY TO SHOW ALL DETAILS WHOSE 
# NAME ENDSWITH "A" AND STARTS WITH "R"

select * from marksheet where Students_Name like "r%a";


  -- WRITE A QUERY TO SHOW ALL DETAILS WHOSE NAME CONTAIN "R AND NOT CONTAIN "H" 

select * from marksheet where Students_Name like 
"%r%" and Students_Name not like "%h%";


# FILTER STUDENTS DETAILS WHOSE NAME OF LENGTH IS 13

select * from marksheet where Students_Name like "_____________";


-- EXTRACT TABLE WHOSE NAME OF SECOND ALPHABET IS "_R"

select * from marksheet where Students_Name like "_r%";


-- EXTRCT STUDENTS_NAME WHERE TWO SPACE CONTAIN IN NAME

select * from marksheet where Students_Name like "% %% %";


# WRITE A QUERY TO SHOW ALL DETAILS WHOSE NAME CONTAIN "V" OR "H"

select * from marksheet where students_name like "v%" or "h%";


# FILTER ALL STUDENTS WHOSE NAME OF CITY OF STARTS WITH "D" 
# AND LENGHT SHOULD BE 5 

select * from marksheet where city like "d____%";

--   filter students na,e from table whose name of  
--  starting of second alphabet is "r" 
--  and ends of second alphaber is "m

select * from marksheet where Students_Name like "_r%m_";

-- count all students whose name contain "RI"

select count(*) from marksheet where Students_Name like "%ri%";