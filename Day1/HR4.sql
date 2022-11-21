--get me unique job_ids
select distinct JOB_ID from EMPLOYEES;

--get me average salary for IT_PROG
select avg(SALARY) from EMPLOYEES
where JOB_ID = 'IT_PROG';

--get me average salary for each job_id
select JOB_ID,avg(SALARY),count(*),sum(SALARY)
from EMPLOYEES
group by JOB_ID;

--get me job_ids where their avg salary is more than 5k
select JOB_ID,avg(SALARY),count(*),sum(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY) >5000;

--how to find employees information of who is making highest salary in the company
select * from EMPLOYEES
order by SALARY desc;

--get me highest salary
select max(SALARY) from EMPLOYEES;

--highest salary employee information
select * from EMPLOYEES
where SALARY =24000;

--subquery solution in one shot
select * from EMPLOYEES
where SALARY =(select max(SALARY) from EMPLOYEES);

--finding second highest salary
--first get highest salary
select max(SALARY) from EMPLOYEES
--highest salary after 24K
where SALARY <24000;

--one shot combining two queries
select max(SALARY) from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES);

--employee information of who is making second highest salary
select * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES
                where SALARY < (select max(SALARY) from EMPLOYEES));




