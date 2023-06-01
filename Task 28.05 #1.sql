--Theoretical: What is the difference between the INNER JOIN and LEFT JOIN in SQL? 
The inner join operation is meant to pull rows that have a match in both tables.
The left join, on the other hand, is meant to pull all rows from the left table, and only matching rows from the right table.

--Incomplete - Practical: Write a SQL query to fetch the names of employees who are working under a manager with manager_id '102'.

select first_name
from employees
where manager_id=102

--Problem-Solving: How would you use SQL to find the department with the most number of employees?
select max(emp_count)as max_count
from(
select department_id,
       count(employee_id) as emp_count
from employees e
group by department_id)

--Complete - Practical: Write a SQL query to find the names of all employees who have the job title 'Sales Representative'.
    --*Hint: Use the employees table and WHERE clause to filter the job_id column.*
select e.first_name, j.job_title
from employees e
left join jobs j on e.job_id=j.job_id
where job_title='Sales Representative'
  
--Incomplete - Practical: Write a SQL query to get the list of all department names and the number of employees in each department.
select d.department_name as department_name,
count(e.employee_id) as count_employees
from departments d
join employees e on d.department_id = e.department_id
group by d.department_name ;

