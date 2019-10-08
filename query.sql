-- 1. LIST EMPLOYEE DETAILS: 
-- emp number, last name first name, gender, salary
select employees.emp_no, first_name, last_name, gender, salary 
from employees
left join salaries
on employees.emp_no = salaries.emp_no;

-- 2. LIST EMPLOYEES HIRED IN 1986
select * from employees
where hire_date between '1986-01-01' and '1986-12-31';

-- 3. LIST MANAGER OF EACH DEPT WITH FOLLOWING INFO:
-- dept no, dept name (departments), emp no, last name (emp), first name (emp), start date, to date
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, last_name, first_name, from_date, to_date
from dept_manager
left join departments on dept_manager.dept_no = departments.dept_no
left join employees on dept_manager.emp_no = employees.emp_no;

-- 4. LIST DEPARTMENT OF EACH EMPLOYEE WITH FOLLOWING INFO:
-- emp no, last name, first name, and dept name
select employees.emp_no, last_name, first_name, dept_name
from dept_emp
right join employees on dept_emp.emp_no = employees.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no;

-- 5. LIST ALL EMPLOYEES WHOSE FIRST NAME IS "Hercules" and LAST NAME STARTS WITH "B"
select * from employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6. LIST ALL EMPLOYEES IN THE SALES DEPARTMENT INCLUDING:
-- emp no, last name, first name, dept name
select employees.emp_no, last_name, first_name, departments.dept_name
from dept_emp
right join employees on dept_emp.emp_no = employees.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';

-- 7. LIST ALL EMPLOYEES IN SALES AND DEVELOPMENT DEPARTMENTS INCLUDING:
-- emp no, last name, first name, dept name
select employees.emp_no, last_name, first_name, departments.dept_name
from dept_emp
right join employees on dept_emp.emp_no = employees.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where dept_name in ('Sales', 'Development');

-- 8. IN DESCENDING ORDER, LIST FREQUENCY COUNT OF EMP LAST NAMES
-- i.e. how many employees share each last name
select last_name, count(last_name) as name_count
from employees
group by last_name
order by count(last_name) DESC;

-- Epiologue
select * from employees
where emp_no = 499942; -- Not a nice name...