
/*Group 1 - INNER JOIN, LEFT JOIN, RIGHT JOIN:
Task 1:
Description: Retrieve the employee ID, first name, department name, job title, and country name of all employees who have a department assigned. Include employees who don't have a job title or a country assigned.
Tables: EMPLOYEES, DEPARTMENTS, JOBS, COUNTRIES
Hint: Use LEFT JOIN to combine the EMPLOYEES and DEPARTMENTS tables on the department ID column. Then use INNER JOIN to join the resulting table with the JOBS and COUNTRIES tables on the corresponding columns.
*/

select e.employee_id, 
       e.first_name,
       d.department_name,
       j.job_title,
       c.country_name
from employees e
left join departments d on e.department_id=d.department_id
inner join jobs j on e.job_id=j.job_id
inner join locations l on d.location_id=l.location_id
inner join countries c on l.country_id=c.country_id

/*
Task 2:
Description: Retrieve the employee ID, first name, department name, job title, and country name of all employees along with their job history, if available. Include employees who don't have a department or job history.
Tables: EMPLOYEES, DEPARTMENTS, JOBS, COUNTRIES, JOB_HISTORY
Hint: Use LEFT JOIN to combine the EMPLOYEES, DEPARTMENTS, JOBS, and COUNTRIES tables on the corresponding columns. Then use LEFT JOIN to join the resulting table with the JOB_HISTORY table on the employee ID column.
*/

select e.employee_id,
       e.first_name,
       d.department_name,
       j.job_title,
       c.country_name,
       jh.*
from employees e 
left join departments d on e.department_id=d.department_id
left join jobs j on e.job_id=j.job_id
left join locations l on d.location_id=l.location_id
left join countries c on l.country_id=c.country_id
left join job_history jh on j.job_id=jh.job_id


/* Task 3:
Description: Retrieve the employee ID, first name, department name, job title, and country name of all employees along with their corresponding department information. Include departments that don't have any employees assigned.
Tables: EMPLOYEES, DEPARTMENTS, JOBS, COUNTRIES
Hint: Use RIGHT JOIN to combine the EMPLOYEES, DEPARTMENTS, JOBS, and COUNTRIES tables on the corresponding columns.
*/

select e.employee_id,
       e.first_name,
       j.job_title,
       c.country_name,
       d.*
from employees e 
right join departments d on e.department_id=d.department_id
right join jobs j on e.job_id=j.job_id
right join locations l on d.location_id=l.location_id
right join countries c on l.country_id=c.country_id

/*Task 4:
Description: Retrieve the employee ID, first name, department name, job title, and country name of all employees along with their corresponding job title and country information. Include employees who don't have a department or job title.
Tables: EMPLOYEES, DEPARTMENTS, JOBS, COUNTRIES
Hint: Use RIGHT JOIN to combine the EMPLOYEES, DEPARTMENTS, JOBS, and COUNTRIES tables on the corresponding columns.
*/
select e.employee_id,
       e.first_name,
       d.department_name,
       j.job_title,
       c.*
from employees e 
right join departments d on e.department_id=d.department_id
right join jobs j on e.job_id=j.job_id
right join locations l on d.location_id=l.location_id
right join countries c on l.country_id=c.country_id


/*Task 5:
Description: Retrieve the employee ID, first name, department name, job title, and country name of all employees along with their corresponding department and job title information. Include employees who don't have a country assigned.
Tables: EMPLOYEES, DEPARTMENTS, JOBS, COUNTRIES
Hint: Use INNER JOIN to combine the EMPLOYEES, DEPARTMENTS, and JOBS tables on the corresponding columns. Then use RIGHT JOIN to join the resulting table with the COUNTRIES table on the country ID column.*/

select e.employee_id,
       e.first_name,
       j.job_title,
       c.country_name
       d.*
from employees e 
inner join departments d on e.department_id=d.department_id
inner join jobs j on e.job_id=j.job_id
right join locations l on d.location_id=l.location_id
right join countries c on l.country_id=c.country_i

