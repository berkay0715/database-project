-- get me info who is working as IT_PROG or SA_REP
select * from employees
where JOB_ID in ('IT_PROG','SA_REP');

-- how many employee working as IT_PROG or SA_REP
select count(*)from employees
where JOB_ID in ('IT_PROG','SA_REP');

-- how many employees making more than 8000
select count(*) from EMPLOYEES
where SALARY>= 8000;

-- how many unique first names we have?
select count(distinct FIRST_NAME) from EMPLOYEES;

-- get me all employees information based on who is making more salary to low salary
select * from EMPLOYEES
order by SALARY desc ;

--desc 9-0 Z-A
--asc 0-9 a-Z

-- get me emp info order by alphabetical order based on first name
select * from EMPLOYEES
order by FIRST_NAME;

--NOTE: default order type is asc if you dont specify after column name

-- get me all emp who first name start with C
select * from EMPLOYEES
where FIRST_NAME like 'C%';

--% means unlimited

--get me 5 letter firstnames where the middle char is z
select * from EMPLOYEES
where FIRST_NAME like '__z__';
-- __ means 2 letters for example if name is with 5 letters and middle letter should be "z" than you have to do __z__

-- get me first name where second char is "u"
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '_u%';

-- find min salary
select min(SALARY) from EMPLOYEES;

-- find max salary
select max(SALARY) from EMPLOYEES;

--find salary average
select avg(SALARY) from EMPLOYEES;

--round
select round(avg(SALARY),2) from EMPLOYEES;

select round(avg(SALARY)) from EMPLOYEES;

