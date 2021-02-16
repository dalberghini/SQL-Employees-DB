create view salaried_employees as
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary from "Salaries" as s
join "Employees" as e
on (s.emp_no = e.emp_no);

create view hire_date_1986 as 
select first_name, last_name, hire_date from "Employees" as e
where hire_date >= '1986-01-01'
and hire_date <='1986-12-31';

create view department_mangaers as 
select de.dept_no, d.dept_name, e.emp_no, e.first_name, e.last_name from "Employees" as e
join "Dept_Managers" as de
on (e.emp_no = de.emp_no)
join "Departments" as d
on (d.dept_no = de.dept_no);

create view employee_department as 
select e.emp_no, e.last_name, e.first_name, d.dept_name from "Employees" as e
join "Dept_employees" as de
on (de.emp_no = e.emp_no)
join "Departments" as d
on (d.dept_no = de.dept_no);

create view HerculesB as 
select e.first_name, e.last_name, e.sex from "Employees" as e
where first_name = 'Hercules'
and last_name  like 'B%';

create view sales_and_development_team as
select e.emp_no, e.last_name, e.first_name, d.dept_name from "Employees" as e
join "Dept_employees" as de
on (de.emp_no = e.emp_no)
join "Departments" as d
on (d.dept_no = de.dept_no)
where de.dept_no = 'd005'
or de.dept_no = 'd007'

create view last_name_count as 
select e.last_name, count(e.last_name) from "Employees" as e
group by e.last_name
order by count(e.last_name) desc;